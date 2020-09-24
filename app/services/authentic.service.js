var authenticModel = require("../models/authentic.model");


var authenticService = {
    authentic: authentic,
    signup:signup
}

function authentic(authenticData) {
    return new Promise((resolve,reject) => {
        authenticModel.authentic(authenticData).then((data)=>{
            resolve(data);
        }).catch((err) => {
            reject(err);
        })
    })
   
}

function signup(signUpData, next) {
    console.log(signUpData);
    return new Promise((resolve,reject) => {
        authenticModel.signup(signUpData, next).then((data)=>{
            resolve(data);
        }).catch((err) => {
            reject(err);
        })
    })
   
}



module.exports = authenticService;

