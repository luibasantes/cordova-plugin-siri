/*global cordova, module*/

module.exports = {
    greet: function (name, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "Siri", "greet", [name]);
    },
    permission: function (name, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "Siri", "permission", [name]);
    }

};
