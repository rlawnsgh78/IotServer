var express = require('express');
var mysql = require('mysql');
var sqlPool = mysql.createPool({
	connectionLimit : 1000,
	host : '182.231.176.118',
	port : '3307',
	user : 'root',
	password : 'root'
});

module.exports = sqlPool;