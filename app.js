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
  hotel_room_getAllRoomByHotelId,
  room_state_getRoomInfoByHotelIdEidDate} = require('./db')
const bodyParser = require('koa-bodyparser')
const jsonMIME = 'application/json'
//以下是自己添加的
const querystring = require('querystring')
const fs = require('fs');
const mime = require('mime-types')
const https = require("https")
const http = require("http")
//广告所在的绝对路径
const errorImgPath = "D:\\HotelBookingImages\\error.jpg"
const adPath = "D:\\HotelBookingImages\\advertisement\\"
//酒店图片所在的绝对路径
const hotelsImg = "D:\\HotelBookingImages\\hotels\\"
//获取某个酒店某个房间指定日期的数据
router.get('/room_state/getRoomInfoByHotelIdEidDate/:hotelId/:eid/:sdate/:edate', async (context) => {
  const hotelId = context.params.hotelId
  const eid = context.params.eid
  const sdate = context.params.sdate
  const edate = context.params.edate
  var result = await room_state_getRoomInfoByHotelIdEidDate(hotelId,eid,sdate,edate)

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
