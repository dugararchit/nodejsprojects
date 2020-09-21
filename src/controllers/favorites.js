const dbConn = require("../models/sqlModel");
const db = new dbConn();
const tables = require("../enums/tables");
const moment = require("moment");

const { getRecords, insertRecords, updateRecords } = require("../models/schemas");
const { update } = require("lodash");

module.exports = {
    getFavorites: async function (req, res) {
        try {
            await getRecords.validateAsync(req.body);
            const result = await db.getRecords(tables.Favorites, "*", `Id='${req.body.Id}'`);
            res.send(result);
        }
        catch (err) {

            if (err && err.details && err.details.length > 0) {
                console.log(err.details);
                //===error with validations
                res.status(400).send({
                    status: false,
                    msg: `${err.details[0]["message"]}` || "Required Params not present"
                });
            } else {
                console.log(err);
                res.send(err);
            }
        }
    },
    insertFavorites: async function (req, res) {
        try {
            await insertRecords.validateAsync(req.body);

            req.body.Date = moment().format("YYYY-MM-DD HH:mm:ss");
            let tableComlumns = Object.keys(req.body).join(",");
            let tableValues = Object.values(req.body)
            const result = await db.insertRecords(tables.Favorites, tableComlumns, "", [[tableValues]]);
            res.send(result);
        }
        catch (err) {

            if (err && err.details && err.details.length > 0) {
                console.log(err.details);
                //===error with validations
                res.status(400).send({
                    status: false,
                    msg: `${err.details[0]["message"]}` || "Required Params not present"
                });
            } else {
                console.log(err);
                res.send(err);
            }
        }
    },
    updateFavorites: async function (req, res) {
        try {
            await updateRecords.validateAsync(req.body);
            let id = req.params.id;
            let setValues = "";
            setValues += (req.body.AssetId != undefined) ? `AssetId='${req.body.AssetId}',` : "";
            setValues += (req.body.AssetType != undefined) ? `AssetType='${req.body.AssetType}',` : "";
            setValues += (req.body.Duration != undefined) ? `Duration='${req.body.Duration}',` : "";
            setValues += `modified_at='${moment().format("YYYY-MM-DD HH:mm:ss")}'`;
            const result = await db.updateRecords(tables.Favorites, setValues, `Id='${id}'`);
            res.send(result);
        }
        catch (err) {

            if (err && err.details && err.details.length > 0) {
                console.log(err.details);
                //===error with validations
                res.status(400).send({
                    status: false,
                    msg: `${err.details[0]["message"]}` || "Required Params not present"
                });
            } else {
                console.log(err);
                res.send(err);
            }
        }
    },
    deleteFavorites: async function (req, res) {
        try {
            let id = req.params.id;
            const result = await db.deleteRecord(tables.Favorites, `Id='${id}'`);
            res.send(result);
        }
        catch (err) {
            console.log(err);
            res.send(err);

        }
    },
};