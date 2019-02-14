#设置客户端工具提交的SQL语句所用字符编码
SET NAMES UTF8;

#尝试丢弃指定的数据库
DROP DATABASE IF EXISTS mall;

#创建mall数据库 指定保存字符所用的字符集标准：UTF-8标准
CREATE DATABASE mall CHARSET=UTF8;

#进入指定的数据库
USE mall;

#创建新的数据表: 用户信息表
CREATE TABLE userInfo( 
	uid INT,			#用户编号
	uname VARCHAR(32),  #用户名  :可变长度
	upwd VARCHAR(32)	#用户密码：可变字符串
);



#向用户信息表中插入数据
INSERT INTO userInfo VALUES(
	001 ,
	'xiangzi' ,
	'woaiwangbadan123!'
);



