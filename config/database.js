const mysql = require('mysql');

module.exports = mysql.createPool({
    connectionLimit : 100,
    host : '172.22.0.2',
    user :  'root',
    password: 'Udaipur12345#',
    database: 'sampleDBNew',
    port: '3306'
})





