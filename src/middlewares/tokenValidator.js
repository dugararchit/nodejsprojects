const authService = require("../services/authService");
const _ = require("lodash");
async function tokenValidator(request, response, next) {
    try {
        const body = request.body;
        if (!body["Authorization"] && !body["X-Z5-Guest-Token"]) {
            console.error(`Access token not available in body`);
            return response.status(401).send({ error_code: "401", error_msg: "Token not found" });
        }
        if (body["Authorization"] && body["X-Z5-Guest-Token"]) { //Decide error code and message 
            console.error(`Both guest and auth token present in body`);
            return response.status(401).send({ error_code: "401", error_msg: "Invalid Token" });
        }

        let decoded;
        if (body.hasOwnProperty("Authorization") && !_.isEmpty(body["Authorization"])) {
            if (body["Authorization"].indexOf("bearer") != -1) {
                let n = body["Authorization"].indexOf("bearer");
                body["Authorization"] = body["Authorization"].slice(n + 7);
            }
            decoded = await authService.verifyToken(body["Authorization"]);
        }
        else if (body.hasOwnProperty("X-Z5-Guest-Token") && !_.isEmpty(body["X-Z5-Guest-Token"])) {
            if (body["X-Z5-Guest-Token"].indexOf("bearer") != -1) {
                let n = body["X-Z5-Guest-Token"].indexOf("bearer");
                body["X-Z5-Guest-Token"] = body["X-Z5-Guest-Token"].slice(n + 7);
            }
            decoded = await authService.verifyToken(body["X-Z5-Guest-Token"]);
        }

        if (decoded != null && decoded != undefined) {
            if (Object.keys(decoded).includes('error')) {
                return response.send({
                    error: decoded.error
                })
            }
        }
        else {
            return response.status(401).send({ error_code: "401", error_msg: "Token Invalid" });
        }
        next();
        return decoded;
    }
    catch (error) {
        return response.send({
            errorCode: 400,
            errorMessage: error
        })
    }
};

module.exports = tokenValidator;