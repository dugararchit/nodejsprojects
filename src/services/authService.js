const jwt = require("jsonwebtoken");
const _ = require("lodash");
const env = require("./../config/config");
const fs = require('fs');

class authService{

    static async verifyToken(token) {
        try {
            const cert = fs.readFileSync(process.cwd()+'/src/controllers/helpers/singlePlayback/keyOs/rsa.pem');
            let decoded;
            decoded = await jwt.verify(token,cert);
            return decoded;
        } catch (error) {
            return {
                error:error
            }
        }
    }
}

module.exports = authService;