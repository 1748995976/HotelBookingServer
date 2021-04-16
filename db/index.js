const {Hotel,user_account_pwd,home_advertisement,adcode_moreinfo,
  user_lived_record,user_fav_record,hotel_room,room_state,hotel_service,
  user_history_order} = require('./model/hotels')
const {Op} = require('sequelize')
const Sequelize = require('sequelize')
const moment = require('moment')
const { min } = require('moment')
//用户订单失效时间，用户当前是否可以删除订单，订单状态的更改等等，需要好好考虑
//以下是对user_history_order表进行操作(修改用户的订单记录，修改订单的状态)
//以下是对user_history_order表进行操作(表面上删除用户的订单记录)
//以下是对user_history_order表进行操作(增加用户的订单记录)
//以下是对user_history_order表进行操作(获取用户的订单历史，只获取用户可以看到的,isShow字段不可见)
async function user_history_order_getHistoryOrderByAccount(account) {
  return user_history_order.findAll({
    attributes: ['account','hotelId','eid','number','totalPrice','sdate','edate',
    'orderState','customerName','customerPhone','arriveTime'],
    where:{
      account:account,
      isShow:1,
    },
    order:[
      ['sdate', 'DESC']
    ]
  })
}

//以下是对hotel_service表进行操作(获取指定酒店的服务)
async function hotel_service_getServiceByHotelId(hotelId) {
  return hotel_service.findOne({
    attributes: ['hotelId','servicetitle_1','servicepre_1','servicetitle_2','servicepre_2',
    'servicetitle_3','servicepre_3','cancellevel','canceltitle','cancelpolicy','childlivein','addbed',
    'userule_1','userule_2','userule_3','roomtypedesc_1','roomtypedesc_2'],
    where:{
      hotelId:hotelId,
    },
    order:[
      ['hotelId', 'DESC']
    ]
  })
}

//将yyyy-(m)m-dd转换成yyyy/mm/dd
function changeDateFormate(date){
  var year = ""
  var month = ""
  var day = ""
  for(let i=0;i<date.length;){
    if(date[i] == '-' && year.length != 0 && month.length != 0){
      i++
      for(;i<date.length && date[i] != '-';++i){
        day += date[i]
      }
    }else if(date[i] == '-' && year.length != 0){
      i++
      for(;i<date.length && date[i] != '-';++i){
        month += date[i]
      }
    }else{
      year += date[i]
      i++
    }
  }
  if(month.length == 1){
    month = '0' + month
  }
  return (year+'/'+month+'/'+day)
}
//以下是取消订单的处理，应该在room_state表中进行相应的操作,将房间的剩余数量进行增加
async function room_state_updateAddRoomRemaining(hotelId,eid,sdate,edate,number){
  const startDate = Date.parse(new Date(changeDateFormate(sdate)))
  const endDate = Date.parse(new Date(changeDateFormate(edate)))

  for(let i=startDate;i<endDate;){
    const value = await room_state.findOne({
      attributes: ['hotelId','eid','date','remaining','state','price'],
      where:{
        hotelId:hotelId,
        eid:eid,
        date:i
      },
      order:[
        ['eid', 'DESC']
      ],
      raw: true,
    })

    var newState = ""
    if(value.remaining+number <= 0){
      newState = "无"
    }else if(value.remaining+number == 1){
      newState = "抢"
    }else{
      newState = "订"
    }

    const result = await room_state.update({
      remaining: Sequelize.literal('remaining +' + number),
      state:newState,
    },{
      where:{
        hotelId:hotelId,
        eid:eid,
        date:i
      },
    })
    
    //下面对日期进行加一天
    const tmp = new Date(i)
    i = tmp.setDate(tmp.getDate()+1)
  }
}
//以下是提交订单的处理，应该在room_state表中进行相应的操作,将房间的剩余数量进行缩减
async function room_state_updateReduceRoomRemaining(hotelId,eid,sdate,edate,number){
  const startDate = Date.parse(new Date(changeDateFormate(sdate)))
  const endDate = Date.parse(new Date(changeDateFormate(edate)))

  for(let i=startDate;i<endDate;){
    const value = await room_state.findOne({
      attributes: ['hotelId','eid','date','remaining','state','price'],
      where:{
        hotelId:hotelId,
        eid:eid,
        date:i
      },
      order:[
        ['eid', 'DESC']
      ],
      raw: true,
    })
    var newState = ""
    if(value.remaining-number <= 0){
      newState = "无"
    }else if(value.remaining-number == 1){
      newState = "抢"
    }else{
      newState = "订"
    }

    const result = await room_state.update({
      remaining: Sequelize.literal('remaining -' + number),
      state:newState,
    },{
      where:{
        hotelId:hotelId,
        eid:eid,
        date:i
      },
    })
    
    //下面对日期进行加一天
    const tmp = new Date(i)
    i = tmp.setDate(tmp.getDate()+1)
  }
}
//以下是对room_state表进行操作(获取某个酒店 包含 指定日期的所有房间的部分数据)
async function room_state_getRoomInfoByHotelIdDate(hotelId,eid,sdate,edate) {
  const startDate = Date.parse(new Date(changeDateFormate(sdate)))
  const endDate = Date.parse(new Date(changeDateFormate(edate)))

  var count = 0
  var priceList = []
  var totalPrice = 0
  var minRemaining = 20000
  var finalState = "订"
  for(let i=startDate;i<endDate;){
    count++
    const value = await room_state.findOne({
      attributes: ['hotelId','eid','date','remaining','state','price'],
      where:{
        hotelId:hotelId,
        eid:eid,
        date:i
      },
      order:[
        ['eid', 'DESC']
      ],
      raw: true,
    })
    //const result = JSON.parse(JSON.stringify(value))
    if(value == null){
      return null
      break
    }else{
      totalPrice += value.price
      priceList.push(value.price)
      if(minRemaining>value.remaining){
        minRemaining = value.remaining
      }
      if(finalState == "订"){
        finalState = value.state
      }else if(finalState == "抢" && value.state != "订"){
        finalState = value.state
      }else if(finalState == "无"){
        //不做任何操作
      }
    }
    //下面对日期进行加一天
    const tmp = new Date(i)
    i = tmp.setDate(tmp.getDate()+1)
  }
  return {
    "hotelId":hotelId,
    "eid":eid,
    "sdate":sdate,
    "edate":edate,
    "remaining":minRemaining,
    "state":finalState,
    "price":priceList,
    "totalPrice":totalPrice,
    "avgPrice":(totalPrice/count).toFixed(0),
  } 
}
//以下是对hotel_room表进行操作(获取某个酒店指定房间的信息)
async function hotel_room_getRoomByHotelIdEid(hotelId,eid) {
  return hotel_room.findOne({
    attributes: ['hotelId','eid','types','roomname','photo1','photo2','photo3','photo4',
    'count','desc','beddesc','roomarea','floordesc','windowdesc','wifidesc','internetdesc',
    'smokedesc','peopledesc','desc','breakfast','beddetail','costpolicy','easyfacility',
    'mediatech','bathroommatch','fooddrink','outerdoor','otherfacility'],
    where:{
      hotelId:hotelId,
      eid:eid,
    },
    order:[
      ['hotelId', 'DESC']
    ]
  })
}
//以下是对hotel_room表进行操作(获取某个酒店所有房间的信息)
async function hotel_room_getAllRoomByHotelId(hotelId) {
  return hotel_room.findAll({
    attributes: ['hotelId','eid','types','roomname','photo1','photo2','photo3','photo4',
    'count','desc','beddesc','roomarea','floordesc','windowdesc','wifidesc','internetdesc',
    'smokedesc','peopledesc','desc','breakfast','beddetail','costpolicy','easyfacility',
    'mediatech','bathroommatch','fooddrink','outerdoor','otherfacility'],
    where:{
      hotelId:hotelId
    },
    order:[
      ['hotelId', 'DESC']
    ]
  })
}

//以下是对user_lived_record表进行操作
async function user_lived_record_getAllByUserId(userId) {
  return user_lived_record.findAll({
    attributes: ['id','userId','hotelsId','liveDate'],
    where:{
      userId:userId
    },
    order:[
      ['liveDate', 'DESC']
    ]
  })
}
//以下是对user_fav_record表进行操作
async function user_fav_record_getAllByUserId(userId) {
  return user_fav_record.findAll({
    attributes: ['id','userId','hotelsId'],
    where:{
      userId:userId
    },
    order:[
      ['id', 'DESC']
    ]
  })
}
//通过对user_lived_record和hotels表进行操作，使用用户userid查询出用户收藏的酒店
async function getFavHotelsByUserID(userId) {
  const livedResult = await user_fav_record_getAllByUserId(userId)
  var arr = []
  for(let i= 0;i < livedResult.length;i++){
    //result返回的是一个数组
    var result = await getHotelById(livedResult[i].hotelsId)
    result.forEach(element => {
      arr.push(element)
    });
  }
  return arr
}

//通过对user_lived_record和hotels表进行操作，使用用户userid查询出住过的酒店
async function getLivedHotelsByUserID(userId) {
  const livedResult = await user_lived_record_getAllByUserId(userId)
  var arr = []
  for(let i= 0;i < livedResult.length;i++){
    //result返回的是一个数组
    var result = await getHotelById(livedResult[i].hotelsId)
    result.forEach(element => {
      arr.push(element)
    });
  }
  return arr
}


//以下是对adcode_moreinfo表进行操作
async function adcode_moreinfo_getAllByAdcode(adcode) {
  return adcode_moreinfo.findAll({
    attributes: ['id','adcode','name','lat','lon','type','ishot','initials'],
    where:{
      adcode:adcode
    },
    order:[
      ['id', 'DESC']
    ]
  })
}


//以下是对home_advertisement表进行操作
async function home_advertisement_getAll() {
  return home_advertisement.findAll({
    attributes: ['imagePath','adUrl'],
    order:[
      ['imagePath', 'DESC']
    ]
  })
}


//以下是对user_account_pwd表进行操作
async function user_account_pwd_getAllUsers() {
  return user_account_pwd.findAndCountAll({
    attributes: ['account','password'],
    order:[
      ['account', 'DESC']
    ]
  })
}
async function user_account_pwd_getUserByAccount(account,pwd){
  return user_account_pwd.findOne({
    where:{
      account:account,
      password:pwd
    }
  })
}

//以下是对hotels表进行操作
async function getAllHotels() {
  return Hotel.findAll({
    attributes: ['id', 'name', 'adcode', 'lon', 
    'lat', 'photo1', 'photo2', 'photo3','address','types','score','scoreDec','price',
    'openTime','decorateTime','distanceText','distanceBus'],
    order:[
      ['id', 'DESC']
    ]
  })
}

async function getHotelById(id){
  return Hotel.findAll({
    attributes: ['id', 'name', 'adcode', 'lon', 
    'lat', 'photo1', 'photo2', 'photo3','address','types','score','scoreDec','price',
    'openTime','decorateTime','distanceText','distanceBus'],
    where:{
      id:id,
    },
    order:[
      ['id', 'DESC']
    ]
  })
}

async function getHotelByName(name){
  return Hotel.findAll({
    where:{
      name:{
        [Op.like]: `${name}%`
      }
    }
  })
}

async function updateHotel(id, hotel){
  const item = await getHotelById(id)
  if(item){
    return item.update(hotel)
  } else {
    throw new Error(`the customer with id ${id} is not exist`)
  }
}

async function createHotel(hotel){
  return Hotel.create(hotel)
}

async function deleteHotel(id){
  const hotel = await getHotelById(id)
  if(hotel){
    return hotel.destroy()
  }
}

module.exports = {
  getAllHotels,
  getHotelById,
  getHotelByName,
  createHotel,
  updateHotel,
  deleteHotel,

  user_account_pwd_getAllUsers,
  user_account_pwd_getUserByAccount,

  home_advertisement_getAll,

  adcode_moreinfo_getAllByAdcode,

  user_lived_record_getAllByUserId,

  getLivedHotelsByUserID,
  getFavHotelsByUserID,

  hotel_room_getRoomByHotelIdEid,
  hotel_room_getAllRoomByHotelId,

  room_state_updateAddRoomRemaining,
  room_state_updateReduceRoomRemaining,
  room_state_getRoomInfoByHotelIdDate,

  hotel_service_getServiceByHotelId,

  user_history_order_getHistoryOrderByAccount
}