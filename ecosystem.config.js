module.exports = [{
  script       : 'server.js',
  name         : 'node-test-app',
  exec_mode    : 'cluster',
  ignore_watch : [".git", "node_modules", "public", "_no"],
  watch        : true,
  instances    : 2
}];