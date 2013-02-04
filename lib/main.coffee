ProtoSock = require 'protosock'
client = require './Client'

module.exports =
  createClient: ProtoSock.createClientWrapper client

if !window?
  server = require './Server'
  module.exports.createServer = ProtoSock.createServerWrapper server