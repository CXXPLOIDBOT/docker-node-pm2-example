'use strict'

const Express = require('express');

const PORT = 8080;
const HOST = '0.0.0.0';

const App = Express();

App.use((req, res, next) => {
  console.log(`${req.method} - ${req.url}`);
});

App.get('/:anything?', (req, res) => {
  res.send([
    `Hello World`,
    `v${process.env.APP_VERSION}`, // Environment variable set in Dockerfile
    `${require("os").userInfo().username}` // Not running as root user
  ].join(`<br/>`));
});

App.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);