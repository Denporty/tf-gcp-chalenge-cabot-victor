
const http = require('@google-cloud/functions-framework');


http('helloGET', (req, res) => {
  res.send('Hello World!');
});