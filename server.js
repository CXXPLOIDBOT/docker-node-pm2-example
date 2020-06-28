'use strict'

const Express = require('express');

const PORT = 8080;
const HOST = '0.0.0.0';

const App = Express();

App.get('/', (req, res) => {
  res.send('Hello World');
});

App.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
console.log(`App version ${process.env.APP_VERSION}`);