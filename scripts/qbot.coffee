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
    msg.send "Greetings @#{msg.message.user.name}."
  robot.hear /time to bounce/i, (msg) ->
    msg.send "*Makes #{msg.message.user.name} bounce.*"
    msg.emote "set #{msg.message.user.name} as a bouncer."
  robot.hear /make me an rdj/i, (msg) ->
    msg.emote "set #{msg.message.user.name} as a resident DJ."
  robot.hear /^!(rick)\b/i, (msg) ->
    msg.reply "#{msg.message.user.name}ROLL!"
  robot.hear /^!say (.*)$/i, (msg) ->
    msg.send msg.match[1]
  robot.hear /^!slay (.*)$/i, (msg) ->
    if msg.match[1] == "hubot" || msg.match[1] == "hubbie" || msg.match[1] == "@hubbie"
      # robot.send "_Commits suicide (action done by #{msg.message.user.name})_"
      # robot.send "Ending current process (hubot) in 5 seconds."
      console.error("_Commits suicide (action done by #{msg.message.user.name})_");
      console.error("Ending current process (hubot) in 5 seconds.");
      kill = () ->
        process.exit(1)
      setTimeout(kill, 5 * 1000);
    else
      msg.send "_Slays " + msg.match[1] + "_"
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
    