{join} = require 'path'
connect = require "connect"
Vein = require "../../index.js"

# static file server
app = connect()
app.use connect.static __dirname
server = app.listen 8080

# RPC
vein = Vein.createServer server

vein.add 'add', (res, args...) ->
  result = 0
  result += arg for arg in args
  res result

console.log 'Server running on port 8080'