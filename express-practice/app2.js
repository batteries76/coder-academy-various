var express = require("express");
var logger = require("morgan");
var http = require("http");
var app = express();

app.use(logger("combined"));
// Fun fact: logger() returns a function.

// Logging middleware
app.use(function(request, response, next) {
  console.log("In comes a " + request.method + " to " + request.url);
  next();
});

// Send "hello world"
app.use(function(request, response) {
  response.writeHead(200, { "Content-Type": "text/plain" });
  response.end("Hello world!\n");
});

http.createServer(app).listen(1337);
