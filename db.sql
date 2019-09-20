#db.sql 创建表添加数据
#学子商城 mintui版本

#功能一:创建表xz_login 用户登录表
USE xz;
CREATE TABLE xz_login(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(50),
  upwd  VARCHAR(32)
);
#功能二:添加二条测试数据 
INSERT INTO xz_login VALUES(null,'tom',md5('123'));
INSERT INTO xz_login VALUES(null,'jerry',md5('123'));
ALTER TABLE xz_laptop add img_url VARCHAR(255);
UPDATE xz_laptop SET img_url="01.jpg"  where lid=1;
UPDATE xz_laptop SET img_url="02.jpg"  where lid>1;
CREATE  TABLE xz_cart(
  id INT PRIMARY KEY AUTO_INCREMENT,
  lid INT,
  price decimal(10,2),
  count INT,
  lname VARCHAR(255),
  uid INT
);
-- select id from xz_cart  where uid=? and lid=?;
-- insert into xz_cart(price,lname,) values(null,)
-- update xz_cart set count=count+1 where uid =? and lid=?;

