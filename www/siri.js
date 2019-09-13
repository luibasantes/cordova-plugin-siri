/*global cordova, module*/

module.exports = {
    greet: function (name, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "Siri", "greet", [name]);
    },
    askPermission: function (name, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "Siri", "askPermission", [name]);
    }

};
