var db = require('../../config/database');
var dbFunc = require('../../config/db-function');
const bcrypt = require('bcrypt');

var authenticModel = {
    authentic: authentic,
    signup: signup
}

function authentic(authenticData) {
    return new Promise((resolve, reject) => {
        db.query(`SELECT * FROM user WHERE username ='${authenticData.username}'`, (error, rows, fields) => {
            if (error) {
                reject(error);
            } else {
                bcrypt.compare(authenticData.password, rows[0].password, function (err, isMatch) {
                    if (err) {
                        reject(error);
                    } else if (isMatch) {
                        resolve(rows);
                    }
                    else {
                        reject({"success":false,"message":"password doesnot match"});
                    }
                });

            }
        });
    });

}


function signup(user, next) {
    console.log(user);
    return new Promise((resolve, reject) => {
        // console.log(bcrypt);


        // console.log(db);
        // db.query("INSERT INTO user(name, username, password, age, state, country) VALUES('" + user.name + "','" + user.username + "','" + user.password + "', '" + user.age + "','" + user.state + "','" + user.country + "')", (error, rows, fields) => {
        //     console.log(error);
        //     if (error) {
        //         dbFunc.connectionRelease;
        //         reject(error);
        //     } else {
        //         dbFunc.connectionRelease;
        //         resolve(rows);
        //     }
        // });

        




        bcrypt.genSalt(10, function (err, salt) {
            console.log(salt, err);
            if (err) {
                console.log(err);
                return next(err);
            }
            console.log(salt, user);
            bcrypt.hash(user.password, salt, function (err, hash) {
                if (err) {
                    return next(err);
                }
                user.password = hash;
                db.query("SELECT * FROM user WHERE username='"+user.username+"'", (error, rows, fields) => {
                    if (error) {
                        dbFunc.connectionRelease;
                        reject(error);
                    } else if(rows.length>0) {
                        dbFunc.connectionRelease;
                        reject({"success":false,"message":"user already exist ! try with different user"});
                    } else {
                        db.query("INSERT INTO user(name, username,password, age, state, country)VALUES('" + user.name + "','" + user.username + "','" + user.password + "', '" + user.age + "','" + user.state + "','" + user.country + "')", (error, rows, fields) => {
                            if (error) {
                                dbFunc.connectionRelease;
                                reject(error);
                            } else {
                                dbFunc.connectionRelease;
                                resolve(rows);
                            }
                        });
                    }
                });
            })

        });
    });
}

module.exports = authenticModel;



