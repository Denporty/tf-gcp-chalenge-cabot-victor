const functions = require('@google-cloud/functions-framework');
const http = require('http');

exports.handler = functions.http((req, res) => {
  res.end('Hello World!');
});