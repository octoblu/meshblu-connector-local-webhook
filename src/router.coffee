url               = require 'url'
MeshbluAuth       = require 'express-meshblu-auth'
BroadcastController = require './controllers/broadcast-controller'

class Router
  constructor: ({deviceType, imageUrl, @meshbluConfig, serviceUrl}) ->
    @broadcastController = new BroadcastController {@meshbluConfig}

  route: (app) =>
    app.post   '/broadcasts', @broadcastController.broadcast

module.exports = Router
