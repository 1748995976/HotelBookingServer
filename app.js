const Koa = require('koa')
const app = new Koa()
const Router = require('koa-router')
const router = new Router()
const { getAllHotels, getHotelById, getHotelByName, createHotel, updateHotel, deleteHotel, 
  user_account_pwd_getAllUsers,user_account_pwd_getUserByAccount,
  home_advertisement_getAll,
  adcode_moreinfo_getAllByAdcode,
  user_lived_record_getAllByUserId,
  getLivedHotelsByUserID,getFavHotelsByUserID,
  hotel_room_getRoomByHotelIdEid,hotel_room_getAllRoomByHotelId,
  room_state_updateAddRoomRemaining,room_state_updateReduceRoomRemaining,room_state_getRoomInfoByHotelIdDate,
  hotel_service_getServiceByHotelId,
  user_history_order_getHistoryOrderByAccount,
  user_history_order_getOrderByOrderId,
  user_history_order_addOrderByAccount,
  user_history_order_deleteOrderByOrderId,
  user_history_order_cancelOrderByOrderId} = require('./db')
const bodyParser = require('koa-bodyparser')
const jsonMIME = 'application/json'
//以下是自己添加的
const querystring = require('querystring')
const fs = require('fs');
const mime = require('mime-types')
const https = require("https")
const http = require("http")
const moment = require('moment')
//广告所在的绝对路径
const errorImgPath = "D:\\HotelBookingImages\\error.jpg"
const adPath = "D:\\HotelBookingImages\\advertisement\\"
//酒店图片所在的绝对路径
const hotelsImg = "D:\\HotelBookingImages\\hotels\\"
//取消指定订单
router.get('/user_history_order/cancelOrderByOrderId/:orderId', async (context) => {
  const orderId = context.params.orderId
  var result = await user_history_order_cancelOrderByOrderId(orderId)

  context.type = jsonMIME
  context.body = {
    status: 0,
    data: true
  }
})
//删除指定订单
router.get('/user_history_order/deleteOrderByOrderId/:orderId', async (context) => {
  const orderId = context.params.orderId
  var result = await user_history_order_deleteOrderByOrderId(orderId)

  context.type = jsonMIME
  context.body = {
    status: 0,
    data: true
  }
})
//增加指定用户的订单记录
router.post('/user_history_order/addOrderByAccount', async (context) => {
//   {
//     "account": "111111",
//     "hotelId": "9",
//     "eid":"1",
//     "number":1,
//     "totalPrice":3,
//     "sdate":"2021-5-21",
//     "edate":"2021-5-22",
//     "customerName":"牛鼓励",
//     "customerPhone":"123456789",
//     "arriveTime":"不知道",
//     "cancellevel":0 这个是取消的等级
// }
  var request = context.request.body
  var result = await user_history_order_addOrderByAccount(request.account,request.hotelId,request.eid,
    request.number,request.totalPrice,request.sdate,request.edate,
    request.customerName,request.customerPhone,request.arriveTime,request.cancellevel)

  context.type = jsonMIME
  context.response.body = {
    status:0,
    data:true
  }
})
//获取指定用户的历史订单记录
router.get('/user_history_order/getHistoryOrderByAccount/:account', async (context) => {
  const account = context.params.account
  var result = await user_history_order_getHistoryOrderByAccount(account)
  context.type = jsonMIME
  
  context.body = {
    status: 0,
    data: result
  }
})

//获取指定酒店的服务政策
router.get('/hotel_service/getServiceByHotelId/:hotelId', async (context) => {
  const hotelId = context.params.hotelId
  var result = await hotel_service_getServiceByHotelId(hotelId)
  context.type = jsonMIME
  
  context.body = {
    status: 0,
    data: result
  }
})
//更新房间的数据，增加房间的剩余数量
router.get('/room_state/updateAddRoomRemaining/:hotelId/:eid/:sdate/:edate/:number',async (context) => {
  const hotelId = context.params.hotelId
  const eid = context.params.eid
  const sdate = context.params.sdate
  const edate = context.params.edate
  const number = context.params.number
  var result = await room_state_updateAddRoomRemaining(hotelId,eid,sdate,edate,number)

  context.type = jsonMIME
  
  context.body = {
    status: 0,
    data: true
  }
})
//更新房间的数据,减少房间的剩余数量
router.get('/room_state/updateReduceRoomRemaining/:hotelId/:eid/:sdate/:edate/:number',async (context) => {
  const hotelId = context.params.hotelId
  const eid = context.params.eid
  const sdate = context.params.sdate
  const edate = context.params.edate
  const number = context.params.number
  var result = await room_state_updateReduceRoomRemaining(hotelId,eid,sdate,edate,number)

  context.type = jsonMIME
  
  context.body = {
    status: 0,
    data: true
  }
})
//获取指定酒店指定房间指定日期之间的数据
router.get('/room_state/getRoomInfoByHotelIdEidDate/:hotelId/:eid/:sdate/:edate', async (context) => {
  const hotelId = context.params.hotelId
  const eid = context.params.eid
  const sdate = context.params.sdate
  const edate = context.params.edate
  var result = await room_state_getRoomInfoByHotelIdDate(hotelId,eid,sdate,edate)

  context.type = jsonMIME
  
  context.body = {
    status: 0,
    data: result
  }
})
//用户获取某个酒店某个房间的信息
router.get('/hotel_room/getRoomByHotelIdEid/:hotelId/:eid', async (context) => {
  const hotelId = context.params.hotelId
  const eid = context.params.eid
  var result = await hotel_room_getRoomByHotelIdEid(hotelId,eid)

  context.type = jsonMIME
  context.body = {
    status: 0,
    data: result
  }
})
//用户获取某个酒店的所有房间信息
router.get('/hotel_room/getAllRoomByHotelId/:hotelId', async (context) => {
  const hotelId = context.params.hotelId
  var result = await hotel_room_getAllRoomByHotelId(hotelId)

  context.type = jsonMIME
  context.body = {
    status: 0,
    data: result
  }
})

//用户获取收藏酒店记录
router.get('/fav_record/getByUserId/:userId', async (context) => {
  const userId = context.params.userId
  var result = await getFavHotelsByUserID(userId)
  context.type = jsonMIME
  context.body = {
    status: 0,
    data: result
  }
})

//用户获取住宿记录
router.get('/lived_record/getByUserId/:userId', async (context) => {
  const userId = context.params.userId
  var result = await getLivedHotelsByUserID(userId)
  context.type = jsonMIME
  context.body = {
    status: 0,
    data: result
  }
})

//用户获取酒店图片介绍
router.get('/hotels/img/:path', async (context) => {
  const path = context.params.path
  context.type = jsonMIME
  let filePath = hotelsImg + path + ".jpg"
  let file = null

  //readFileSync读取不到文件会异常
  try{
    file = fs.readFileSync(filePath);
  } catch (error){
    filePath = errorImgPath
    file = fs.readFileSync(filePath)
  }

  let mimeType = mime.lookup(filePath); //读取图片文件类型
  context.response.set('content-type', mimeType); //设置返回类型
  context.response.body = file; 
})
//获取所有酒店的信息
router.get('/hotels/getAll', async (context) => {
  var hotels = await getAllHotels()
  context.type = jsonMIME
  context.body = {
    status: 0,
    data: hotels
  }
})

//通过ID获取某个酒店的信息
router.get('/hotels/getById/:id', async (context) => {
  const id = context.params.id
  var result = await getHotelById(id)
  context.type = jsonMIME
  context.body = {
    status: 0,
    data: result
  }
})

//用于查询酒店名/地名/关键词
router.get('/adcode_moreinfo/getAll/:adcode', async (context) => {
  const adcode = context.params.adcode

  var result = await adcode_moreinfo_getAllByAdcode(adcode)

  context.body = {
    status: 0,
    data: result
  }
})

//用于登录界面
router.get('/user_account_pwd/login/:account/:pwd', async (context) => {
  const account = context.params.account
  const password = context.params.pwd
  context.type = jsonMIME
  var result = await user_account_pwd_getUserByAccount(account,password)

  context.body = {
    status: 0,
    result: result != null
  }
})

//用于获取首页banner所有图片的路径
router.get('/home_advertisement/getAll', async (context) => {
  context.type = jsonMIME
  var result = await home_advertisement_getAll()

  context.body = {
    status: 0,
    data: result
  }
})

//用户获取首页banner图片
router.get('/home_advertisement/img/:path', async (context) => {
  const path = context.params.path
  context.type = jsonMIME
  let filePath = adPath + path + ".jpg"
  let file = null

  //readFileSync读取不到文件会异常
  try{
    file = fs.readFileSync(filePath);
  } catch (error){
    filePath = errorImgPath
    file = fs.readFileSync(filePath)
  }

  let mimeType = mime.lookup(filePath); //读取图片文件类型
  context.response.set('content-type', mimeType); //设置返回类型
  context.response.body = file; 
})

router.get('/photo',async ctx => {
  if(ctx.request.query.pid != undefined){
    console.log("ssssss"+ctx.request.query.pid);

    let filePath = "D:\\HotelBookingImages\\1.jpg"
    console.log("wwwwww"+filePath);
	  let file = null;
    //createReadStream与readFileSync可以替换(区别是什么?)
	  try {
	      file = fs.createReadStream(filePath); //读取文件
	  } catch (error) {
		//如果服务器不存在请求的图片，返回默认图片
	    filePath = path.join(__dirname, '\\HotelBookingImages\\2.jpg'); //默认图片地址
	    file = fs.createReadStream(filePath); //读取文件	    
	  }
  
	  let mimeType = mime.lookup(filePath); //读取图片文件类型
	  ctx.response.set('content-type', mimeType); //设置返回类型
	  ctx.response.body = file; 
  }else{
    ctx.body = {
      status: -1
    }    
  }
})

app.use(async (context, next) => {
  try {
    await next()
  } catch (ex) {
    context.type = jsonMIME
    context.body = {
      status: -1,
      message: ex.message
    }
  }
})

app.use(bodyParser())
app.use(router.routes())
app.use(router.allowedMethods())

http.createServer(app.callback()).listen(3000);
const options = {
  key: fs.readFileSync("./server.key", "utf8"),
  cert: fs.readFileSync("./server.cert", "utf8")
  };
https.createServer(options, app.callback()).listen(443);
//app.listen('4001')



// router.get('/customer/:id', async context => {
//   const customer = await getCustomerById(context.params.id)
//   context.type = jsonMIME
//   context.body = {
//     status: 0,
//     data: customer
//   }
// })

// router.get('/customer/name/:name', async context => {
//   const customer = await getCustomerByName(context.params.name)
//   context.type = jsonMIME
//   context.body = {
//     status: 0,
//     data: customer
//   }
// })

// router.post('/customer', async context => {
//   const customer = context.body
//   await createCustomer(customer)
//   context.type = jsonMIME
//   context.body = {
//     status: 0
//   }
// })

// router.put('/customer/:id', async context => {
//   const id = context.params.id
//   const customer = context.body
//   await updateCustomer(id, customer)
//   context.type = jsonMIME
//   context.body = {
//     status: 0
//   }
// })

// router.delete('/customer/:id', async context => {
//   await deleteCustomer(context.params.id)
//   context.type = jsonMIME
//   context.body = {
//     status: 0
//   }
// })
