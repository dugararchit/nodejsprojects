const Joi = require('joi');

const getRecords = Joi.object({
    Id: Joi.string()
        .required()
});

const insertRecords = Joi.object({
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

});

const updateRecords = Joi.object({
    UserId: Joi.string(),
    AssetId: Joi
        .required(),
    AssetType: Joi
        .required(),
    Duration: Joi
        .required()
});

module.exports = {
    getRecords, insertRecords, updateRecords
};