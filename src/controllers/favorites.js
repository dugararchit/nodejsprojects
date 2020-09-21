const dbConn = require("../models/sqlModel");
const db = new dbConn();
const config = require("../config/config.json");
const tables = require("../enums/tables");
const momentJs = require("moment");

module.exports = {
    getFavorites: async function (req, res) {
        try {
            const result = await db.getRecords(tables.Favorites, "Duration", "id = '8FB0481F-1596-43BC-A2F9-FBD3AAFA68F1'");
            res.send(result.recordset);
        }
        catch (err) {
            console.log(err)
        }
    }
};