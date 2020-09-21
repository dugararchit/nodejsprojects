const sql = require('mssql')
const config = require("../config/config.json");
const dbConfig = {
    server: config.dbDetails.HOST,
    user: config.dbDetails.DBUSER,
    password: config.dbDetails.PASSWORD,
    database: config.dbDetails.DATABASE,
    options: {
        enableArithAbort: true
    }
};
const poolPromise = new sql.ConnectionPool(dbConfig)
    .connect()
    .then(pool => {
        console.log('Connected to MSSQL')
        return pool
    })
    .catch(err => console.log('Database Connection Failed! Bad Config: ', err))

module.exports = {
    sql, poolPromise
}