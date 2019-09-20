const express=require("express");
// var userLogin=require("./routes/login.js");
const session = require("express-session");
const pool=require("./pool.js")
const cors=require("cors");

// 创建web服务器
var app=express();
// 监听端口
app.listen(8080);
//静态资源文件托管
app.use(express.static("public"));
//跨域
app.use(cors({
  origin:["http://127.0.0.1:5050","http://localhost:5050"],
  credentials:true
}))
//session
app.use(session({
  secret:"recommend 128 bytes random string", //安全字符串
  resave:true, //每次请求保存数据
  saveUninitialized:true //保存初始化数据
}))
//用户登录
