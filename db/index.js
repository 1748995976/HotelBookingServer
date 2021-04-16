const {Hotel,user_account_pwd,home_advertisement,adcode_moreinfo,
  user_lived_record,user_fav_record,hotel_room,room_state,hotel_service,
  user_history_order} = require('./model/hotels')
const {Op} = require('sequelize')
const moment = require('moment')
//以下是对user_history_order表进行操作(获取用户的订单历史)
async function user_history_order_getHistoryOrderByAccount(account) {
  return user_history_order.findAll({
    attributes: ['account','hotelId','eid','number','totalPrice','sdate','edate','orderState'],
    where:{
      account:account,
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

//以下是对room_state表进行操作(获取某个酒店 包含 指定日期的所有房间的部分数据)
async function room_state_getRoomInfoByHotelIdDate(hotelId,eid,sdate,edate) {
  return room_state.findAll({
    attributes: ['hotelId','eid','sdate','edate','remaining','state','price'],
    where:{
      hotelId:hotelId,
      eid:eid,
      sdate:{
        [Op.lte]:sdate
      },
      edate:{
        [Op.gte]:edate,
      }
    },
    order:[
      ['eid', 'DESC']
    ]
  })
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

  room_state_getRoomInfoByHotelIdDate,

  hotel_service_getServiceByHotelId,

  user_history_order_getHistoryOrderByAccount
}