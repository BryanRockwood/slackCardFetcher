# card_name = new Regex("#{ name }", "i")
# request = require('mtg sdk')
module.exports = (robot) ->
  robot.hear /test test/i, (msg) ->
    msg.send "rocky!"