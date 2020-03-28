"use strict";
exports.__esModule = true;
var http_1 = require("http");
var config = require("../config.json");
var server = http_1.createServer(function (req, res) {
    console.log(req.method.toUpperCase() + " " + req.url);
    res.end("Hello World");
});
var port = config.port;
server.listen(port, function () {
    console.log("listening on " + port);
});
