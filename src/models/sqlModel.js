const db = require("../connections/sqlConnection");
const poolPromise = db.poolPromise;
const _ = require("lodash");
class DB {
  async getRecords(table, fields, where = '', others = "") {
    try {
      const pool = await poolPromise;
      if (_.isEmpty(fields)) {
        fields = '*';
      }
      let sql = `SELECT ${fields} from [z5-user-prod].dbo.${table}`;
      if (where != "") {
        sql += ` where ${where}`;
      }
      if (others != "") {
        sql += ` ${others}`;
      }
      console.log(sql);
      const result = await pool.request()
        .query(sql);


      return result;
    } catch (err) {
      console.log(err.message)
    }
  }
}
module.exports = DB;