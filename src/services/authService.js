const jwt = require("jsonwebtoken");
const _ = require("lodash");
const fs = require('fs');

class authService {

    static async verifyToken(token) {
        try {
            const cert = fs.readFileSync(process.cwd() + '/public/stylesheets/rsa.pem');
            let decoded;
            decoded = await jwt.verify(token, cert);
            return decoded;
        } catch (error) {
            return {
                error: error
            }
        }
    }
}

module.exports = authService;