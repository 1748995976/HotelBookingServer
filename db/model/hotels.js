const Sequelize = require('sequelize');

const sequelize = new Sequelize('hotelbooking', 'root', '3714231999', {
  host: 'localhost',
  dialect: 'mysql',
  port: "3306",
  operatorsAliases: false,
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
});

sequelize.authenticate().then(()=>{
  console.log('Connected')
}).catch(err=>{
  console.error('Connect failed')
});

// 读取hotels表
const Hotel = sequelize.define('hotels', {
  id: {
    type: Sequelize.STRING,
    unique: true,
    primaryKey: true
  },
  name: {
    type: Sequelize.STRING,
  },
  adcode: {
    type: Sequelize.STRING,
  },
  lon: {
    type: Sequelize.STRING
  },
  lat: {
    type: Sequelize.STRING,
  },
  photo1: {
    type: Sequelize.STRING,
  },
  photo2: {
    type: Sequelize.STRING,
  },
  photo3: {
    type: Sequelize.STRING,
  },
  dec: {
    type: Sequelize.STRING,
  },
  types: {
    type: Sequelize.ENUM(['经济型', '舒适/三星','高档/四星','豪华/五星']),
  },
},{
  timestamps: false,
  freezeTableName: true
})

Hotel.sync();

//读取user_account_pwd表
const user_account_pwd = sequelize.define('user_account_pwd', {
  account: {
    type: Sequelize.STRING,
    unique: true,
    primaryKey: true
  },
  password: {
    type: Sequelize.STRING,
  },
},{
  timestamps: false,
  freezeTableName: true
})

user_account_pwd.sync();

//读取home_advertisement表

const home_advertisement = sequelize.define('home_advertisement', {
  imagePath: {
    type: Sequelize.STRING,
    unique: true,
    primaryKey: true
  },
  adUrl: {
    allowNull:true,
    type: Sequelize.STRING,
  },
},{
  timestamps: false,
  freezeTableName: true
})

home_advertisement.sync();

//读取adcode_moreinfo表
const adcode_moreinfo = sequelize.define('adcode_moreinfo', {
  id: {
    type: Sequelize.STRING,
    unique: true,
    primaryKey: true
  },
  adcode: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  name: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  lat: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  lon: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  type: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  ishot: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  initials: {
    allowNull:true,
    type: Sequelize.STRING,
  }
},{
  timestamps: false,
  freezeTableName: true
})
adcode_moreinfo.sync();

//读取user_lived_record表
const user_lived_record = sequelize.define('user_lived_record', {
  id: {
    type: Sequelize.STRING,
    unique: true,
    primaryKey: true
  },
  userId: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  hotelsId: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  liveDate: {
    allowNull:true,
    type: Sequelize.DATE,
  },
},{
  timestamps: false,
  freezeTableName: true
})
user_lived_record.sync();

//读取user_fav_record表
const user_fav_record = sequelize.define('user_fav_record', {
  id: {
    type: Sequelize.STRING,
    unique: true,
    primaryKey: true
  },
  userId: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  hotelsId: {
    allowNull:true,
    type: Sequelize.STRING,
  },
},{
  timestamps: false,
  freezeTableName: true
})
user_fav_record.sync();

//读取hotel_room表
const hotel_room = sequelize.define('hotel_room', {
  hotelId: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  eid: {
    allowNull:false,
    type: Sequelize.STRING,
  },
  types: {
    type: Sequelize.STRING,
  },
  roomname: {
    type: Sequelize.STRING,
  },
  photo1: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  photo2: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  photo3: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  photo4: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  count: {
    allowNull:false,
    type: Sequelize.INTEGER,
  },
  desc: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  beddesc: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  roomarea: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  floordesc: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  windowdesc: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  wifidesc: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  internetdesc: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  smokedesc: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  peopledesc: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  breakfast: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  beddetail: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  costpolicy: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  easyfacility: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  mediatech: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  bathroommatch: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  fooddrink: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  outerdoor: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  otherfacility: {
    allowNull:true,
    type: Sequelize.STRING,
  },
},{
  timestamps: false,
  freezeTableName: true
})
hotel_room.sync();

//读取room_state表
const room_state = sequelize.define('room_state', {
  hotelId: {
    allowNull:false,
    type: Sequelize.STRING,
  },
  eid: {
    allowNull:false,
    type: Sequelize.STRING,
  },
  date: {
    allowNull:false,
    type: Sequelize.DATEONLY,
  },
  remaining: {
    allowNull:false,
    type: Sequelize.INTEGER,
  },
  state: {
    allowNull:false,
    type: Sequelize.STRING,
  },
  price: {
    allowNull:false,
    type: Sequelize.INTEGER,
  },
},{
  timestamps: false,
  freezeTableName: true
})
room_state.sync();

//读取hotel_service表
const hotel_service = sequelize.define('hotel_service', {
  hotelId: {
    type: Sequelize.STRING,
    unique: true,
    primaryKey: true,
  },
  servicetitle_1: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  servicepre_1: {
    allowNull:true,
    type: Sequelize.DATEONLY,
  },
  servicetitle_2: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  servicepre_2: {
    allowNull:true,
    type: Sequelize.DATEONLY,
  },
  servicetitle_3: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  servicepre_3: {
    allowNull:true,
    type: Sequelize.DATEONLY,
  },
  cancellevel: {
    allowNull:false,
    type: Sequelize.INTEGER,
  },
  canceltitle: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  cancelpolicy: {
    allowNull:true,
    type: Sequelize.DATEONLY,
  },
  childlivein: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  addbed: {
    allowNull:true,
    type: Sequelize.DATEONLY,
  },
  userule_1: {
    allowNull:true,
    type: Sequelize.DATEONLY,
  },
  userule_2: {
    allowNull:true,
    type: Sequelize.STRING,
  },
  userule_3: {
    allowNull:true,
    type: Sequelize.DATEONLY,
  },
  roomtypedesc_1: {
    allowNull:true,
    type: Sequelize.DATEONLY,
  },
  roomtypedesc_2: {
    allowNull:true,
    type: Sequelize.DATEONLY,
  },
},{
  timestamps: false,
  freezeTableName: true
})
hotel_service.sync();
//读取user_history_order表
const user_history_order = sequelize.define('user_history_order', {
  account: {
    allowNull:false,
    type: Sequelize.STRING,
  },
  hotelId: {
    allowNull:false,
    type: Sequelize.STRING,
  },
  eid: {
    allowNull:false,
    type: Sequelize.STRING,
  },
  number: {
    allowNull:false,
    type: Sequelize.INTEGER,
  },
  totalPrice: {
    allowNull:false,
    type: Sequelize.INTEGER,
  },
  sdate: {
    allowNull:false,
    type: Sequelize.DATEONLY,
  },
  edate: {
    allowNull:false,
    type: Sequelize.DATEONLY,
  },
  orderState: {
    allowNull:false,
    type: Sequelize.STRING,
  },
  customerName: {
    allowNull:false,
    type: Sequelize.STRING,
  },
  customerPhone: {
    allowNull:false,
    type: Sequelize.STRING,
  },
  arriveTime: {
    allowNull:false,
    type: Sequelize.STRING,
  },
  isShow: {
    allowNull:false,
    type: Sequelize.INTEGER,
  },
},{
  timestamps: false,
  freezeTableName: true
})
user_history_order.sync();



module.exports = {
  Hotel,
  user_account_pwd,
  home_advertisement,
  adcode_moreinfo,
  user_lived_record,
  user_fav_record,
  hotel_room,
  room_state,
  hotel_service,
  user_history_order,
}