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



module.exports = {
  Hotel,
  user_account_pwd,
  home_advertisement,
  adcode_moreinfo,
  user_lived_record,
  user_fav_record
}