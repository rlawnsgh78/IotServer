var express = require('express');
var mysql = require('mysql');
var dbConfig = {
	host : '182.231.176.118',
	port : '3307',
	user : 'root',
	password : 'root'
};
var sqlManager = mysql.createConnection(dbConfig);

sqlManager.query('use subwaydb');

module.exports = sqlManager;