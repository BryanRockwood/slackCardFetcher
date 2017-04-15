# card_name = new Regex("#{ name }", "i")
# request = require('mtg sdk')
responses = ["Hit our swans, draw some cards", "Hit our cards, swans some draw", "PRAAAHBABLY better know as SaffronOlive", "CMON TOP DECK ONE TIME","Blind flip delver? Of course it does."]
module.exports = (robot) ->
  robot.hear /Seth/i, (msg) ->
    msg.send responses[Math.floor(Math.random()*responses.length)]