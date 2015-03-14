# Description:
#   Hey
#
# Notes:
#   Really cool and familiar Qbot, for hubot!
#
# Commands:
#   !rick - ROLL!
#   !help - Same as 'Hubot help'

cleverbot = require('cleverbot-node')

module.exports = (robot) ->
  c = new cleverbot()
  
  robot.hear /^hey(?:,){0,1} (.*)$/i, (msg) ->
    data = msg.match[1]
    c.write(data, (c) => msg.send("@" + msg.message.user.name + " " + c.message))
  
  robot.hear /^(?:(?:cleverbot)|(?:cb)|(?:hubbie)|(?:bot))(?:[,:]{0,1}) (.*)$/i, (msg) ->
    data = msg.match[1]
    c.write(data, (c) => msg.send("@" + msg.message.user.name + " " + c.message))
