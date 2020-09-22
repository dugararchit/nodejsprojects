const Joi = require('joi');


const allowedAuthObjects = {
    "Authorization": Joi.string(),
    "x-access-token": Joi.string(),
    "X-Z5-Guest-Token": ""
};

const getRecords = Joi.object({
    ...{
        Id: Joi.string()
            .required()
    },
    ...allowedAuthObjects
});

const insertRecords = Joi.object({
    ...{
        Id: Joi.string()
            .required(),
        UserId: Joi.string()
            .required(),
        AssetId: Joi
            .required(),
        AssetType: Joi
            .required(),
        Duration: Joi
            .required(),

    }, ...allowedAuthObjects
});

const updateRecords = Joi.object({
    ...{
        UserId: Joi.string(),
        AssetId: Joi
            .required(),
        AssetType: Joi
            .required(),
        Duration: Joi
            .required()
    }, ...allowedAuthObjects
});

module.exports = {
    getRecords, insertRecords, updateRecords
};