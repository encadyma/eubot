# Description:
#   Imitates Qbot from the EDM Qluster plug.dj room.
#
# Notes:
#   Really cool and familiar Qbot, for hubot!
#
# Commands:
#   !rick - ROLL!
#   !help - Same as 'Hubot help'

module.exports = (robot) ->
  robot.enter (msg) ->
    msg.send "Greetings #{msg}."
  robot.hear /^!(rick)\b/i, (msg) ->
    msg.reply "ROLL!"
  robot.hear /^!say (.*)$/i, (msg) ->
    msg.reply msg.match[1]
  robot.hear /^!(help)|(commands)|(cmds)\b/i, (msg) ->
    # The same as in Hubot help
    cmds = robot.helpCommands()
    filter = msg.match[1]
    if filter
      cmds = cmds.filter (cmd) ->
        cmd.match new RegExp(filter, 'i')
      if cmds.length == 0
        msg.send "No available commands match #{filter}"
        return
    prefix = robot.alias or robot.name
    cmds = cmds.map (cmd) ->
      cmd = cmd.replace /hubot/ig, robot.name
      cmd.replace new RegExp("^#{robot.name}"), prefix
    emit = cmds.join "\n"
    msg.send emit