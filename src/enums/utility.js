const env = require("./../config/config.json");
const logLevel = env.logging.logLevel;
const _ = require("lodash");
const timeJson = {};
const log4js = require('log4js');
const logger = log4js.getLogger();
let methodSequence = {};
log4js.configure({
    appenders: { spapi: { type: 'file', filename: env.logging.logPath, maxLogSize: env.logging.maxLogSize ,keepFileExt:true, backups:0} },
    categories: { default: { appenders: ['spapi'], level: 'fatal' } }
});

class utility {
    static error = function (message = 'ERROR', code = 400, httpCode = 400) {
        let status = {
            error_code: code,
            error_msg: message,
            http_code: httpCode
        };
        return status;
    }
    static logger = function (customMessage = "", methodName = "", filePath = "", methodStartTime = "", params = {}, done = 0) {
        let today = new Date();
        let time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds() + ":" + today.getMilliseconds() + " ";
        if (logLevel == 0) {
            return;
        }
        else {
            let log, end;
            //Set time at start of method 
            if (!methodStartTime) {
                log = {
                    message: time + customMessage,
                }
                let keyName = methodName;
                if(Object.keys(methodSequence).includes(keyName)){
                    let previousCount = methodSequence[`${keyName}`]
                    let nextCount = ++previousCount;
                    methodSequence[`${keyName}`] = nextCount; 
                    keyName = keyName + "_" + nextCount;   
                }
                else{
                    methodSequence[`${keyName}`] = 0;
                }
                timeJson[`${keyName}`] = {};
                timeJson[`${keyName}`]["start_time"] = time;
                return process.hrtime();
            }
            //Log details and elapsed time at the end of method 
            else {
                end = process.hrtime(methodStartTime);
                let methodEndTime = Math.round(((end[0] * 1000) + (end[1] / 1000000)));
                log = {
                    message: customMessage,
                    fileName: filePath,
                    methodParams: JSON.stringify(params)
                }
                if(!_.isEmpty(timeJson[`${methodName}`]["end_time"])){
                    let methodSequenceArray = Object.keys(methodSequence);
                    for(let i=methodSequenceArray.length-1;i>0;i--){
                        if(methodSequenceArray[i].indexOf(methodName) != -1){
                            methodName = methodSequenceArray[i]+"_"+methodSequence[methodName];
                            break;
                        }
                    }
                }
                timeJson[`${methodName}`]["end_time"] = time;
                timeJson[`${methodName}`]["elapsed"] = methodEndTime + " ms";
                if (logLevel == 1) {
                    if (customMessage.indexOf("Error") != -1) {
                        delete (log["methodParams"]);
                        timeJson[`${methodName}`]["details"] = JSON.stringify(log);
                    }
                }
                else if (logLevel == 2) {
                    if (customMessage.indexOf("Error") != -1 || customMessage.indexOf("Warning") != -1) {
                        delete (log["methodParams"]);
                        timeJson[`${methodName}`]["details"] = JSON.stringify(log);
                    }
                }
                else if (logLevel == 3) {
                    delete (log["methodParams"]);
                    timeJson[`${methodName}`]["details"] = JSON.stringify(log);
                }
                else if (logLevel == 4) {
                    timeJson[`${methodName}`]["details"] = JSON.stringify(log);
                }
                timeJson[`${methodName}`]["end_time"] = time;
                timeJson[`${methodName}`]["elapsed"] = methodEndTime + " ms";
            }
            if (env.logging.debug && done) {
                // logger.debug(timeJson);
                let summaryString = `\nsinglePlayback      ${timeJson["singlePlayback"]["elapsed"]}(Entry Point Function/Total Time Taken)\n`;
                let timeJsonArray = Object.keys(timeJson);
                for(let i=1;i<timeJsonArray.length;i++){
                    let length = 18 - timeJsonArray[i].length;
                    length = length + 2;
                    let space = "";
                    while(length){
                        space+=" ";
                        length--;
                    }
                    summaryString += `${timeJsonArray[i]}${space}${timeJson[timeJsonArray[i]]["elapsed"]}\n`
                }
                logger.fatal(summaryString)
                methodSequence = {};
            }
        }
    }

}

module.exports = utility;