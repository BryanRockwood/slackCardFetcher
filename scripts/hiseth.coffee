# card_name = new Regex("#{ name }", "i")
# request = require('mtg sdk')
module.exports = (robot) ->
  robot.hear /Seth/i, (msg) ->
    msg.send "Hit our swans, draw some cards"