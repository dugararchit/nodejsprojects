const sql = require('mssql')
const config = require("../config/config.json");
const mysql = require('mysql2/promise');

let dbDetails = config.dbDetails;
const connection = mysql.createPool({
    host: dbDetails.HOST,
    user: dbDetails.USER,
    password: dbDetails.PASSWORD,
    database: dbDetails.DB,
    port: dbDetails.mysqlPort,
    waitForConnections: true,
    connectionLimit: 99,
    queueLimit: 0,
    dateStrings: true
});

module.exports = connection;