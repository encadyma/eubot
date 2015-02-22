# WARNING! NSFW SCRIPT!
# Description:
#   By request of Filly, make Hubot your pleasure bot.
#
# Notes:
#   Not my idea, but Filly's.
#
# Commands:
#   
#   make love to <user> - Make Hubot start a session with someone else in the room.
#   pleasure me - Start a session with Hubot.

module.exports = (robot) ->
  robot.hear /pleasure me/i, (msg) ->
    robot.send "I will, #{msg.message.user.name}."
  robot.hear /make love to (.*)/i, (msg) ->
    data = msg.match[1]
    robot.send "Hey, #{data}. #{msg.message.user.name} told me to make love to you."