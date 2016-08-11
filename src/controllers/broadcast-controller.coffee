_           = require 'lodash'
MeshbluHttp = require 'meshblu-http'

class BroadcastController
  constructor: ({@meshbluConfig}) ->
  broadcast: (req, res) =>
    message = _.defaults devices: ['*'], req.body
    meshblu = new MeshbluHttp @meshbluConfig
    meshblu.message message, (error) =>
      return res.status(error.code || 500).send(error.message) if error?
      return res.sendStatus(201)

module.exports = BroadcastController
