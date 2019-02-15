#设置客户端的字符集编码格式
SET NAMES UTF8;

#删除指定的数据库mall
DROP DATABASE IF EXISTS mall;

#创建mall数据库
CREATE DATABASE mall CHARSET=UTF8;

#进入mall数据库
USE mall;

/* ----------------- 创建新的数据表: 用户信息表【userInfo】 -------------------------- */
CREATE TABLE userInfo(
	uid INT NOT NULL AUTO_INCREMENT,
	uName VARCHAR(20) NOT NULL,
	uPwd VARCHAR(20) NOT NULL,
	nickName VARCHAR(20),			# 昵称
	sex BOOL,						# 0 男 , 1 女
	Avatar VARCHAR(200),			# 头像路径
	email VARCHAR(20) NOT NULL,
	phone VARCHAR(16) NOT NULL,
	isOnline BOOL,					#是否在线 0 不在线,  1 在线
	registerTime DATETIME,			#注册时间
	PRIMARY KEY (uid)
);
#向【userInfo】表中插入模拟数据
INSERT INTO userInfo VALUES(
	000,
	'xiangzi',
	'xiangzi123',
	'横刀立马潼关行',
	0,
	'https://www.baidu.com',
	'darkcity_x@163.com',
	'15693352447',
	1,
	'2019-2-16 14:00:16'
);

/* ----------------- 创建新的数据表: 一级分类表【category】 -------------------------- */
CREATE TABLE category(
	cid INT NOT NULL,
	name VARCHAR(10) NOT NULL,
	PRIMARY KEY(cid)
);
#向【category】表中插入模拟数据
INSERT INTO category VALUES(
	1000,
	'板材'
);

/* ----------------- 创建新的数据表: 二级分类表【categorySub】 ----------------------- */
CREATE TABLE categorySub(
	csid INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(10) NOT NULL,
	PRIMARY KEY(csid)
);
#向【categorySub】表中插入模拟数据
INSERT INTO categorySub VALUES(
	10000,
	'木工板材'
);
/* ----------------- 创建新的数据表: 品牌表【famousBrand】 --------------------------- */
CREATE TABLE famousBrand(
	bid INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(20),
	logoPath VARCHAR(200),
	PRIMARY KEY(bid)
);
#向famousBrand表中添加插入模拟数据
INSERT INTO famousBrand VALUES(
	100,
	'香港俏佳人',
	'www.baidu.com'
);

/* ----------------- 创建新的数据表: 商品详情表【productDetails】 -------------------- */
CREATE TABLE productDetails(
	pid INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(30) NOT NULL,			#商品名称
	price DECIMAL(5,2) NOT NULL,		#商品价格
	isOnsale BOOL,						#是否促销      0 不促销， 1 促销   
	offerPrice DECIMAL(5,2),			#商品优惠价
	stock INT NOT NULL,					#商品库存
	shelfTime DATETIME NOT NULL,		#上架时间
	spec VARCHAR(32),					#规格
	cid INT NOT NULL,					#商品所属一级分类类别
	csid INT NOT NULL,  				#商品所属二级分类类别
	PRIMARY KEY(pid)
);
#向【productDetails】表中插入模拟数据
INSERT INTO productDetails VALUES(
	100000,
	'实木Ⅱ型木工板 香港俏佳人实力推荐品牌',
	'168.00',
	1,
	'146.00',
	'1300',
	'2016-12-16 13:00:00',
	'100*120 6',
	1000,
	10000
);

/* ----------------- 创建新的数据表: 商品图片表【productImages】 -------------------- */

