# Description:
#   By request of Filly, make Hubot your pleasure bot.
#
# Notes:
#   Pleasure bots.
#
# Commands: 
#   make love to <user> - Make Hubot start a session with someone else in the room.
#   pleasure me - Start a session with Hubot.

module.exports = (robot) ->
  
  robot.hear /^(?:pleasure me)/i, (msg) ->
    robot.send "_makes love with #{msg.message.user.name}_"
  
  robot.hear /^(?:make love to) (.*)/i, (msg) ->
    data = msg.match[1]
    robot.send "_gets into a threesome with {data} and {msg.message.user.name}_"