mtg = require('mtgsdk')
module.exports = (robot)->
	robot.hear /\[\[(.*)\]\]/i,  (msg) ->
        card_name = msg.match[1]
        if card_name is "help"
            msg.send "If you need help finding a card, put the name in between brackets. Like [[this!]]"
        else
#            msg.send "Fetching... #{card_name} "
            mtg.card.where({ name: "#{card_name}" })
                .then((c) -> 
                    if c? and c?.length
                        if c[0].imageUrl?  
                            msg.send c[0].imageUrl
                        else
                            if c[0].type = 'Sorcery' || c[0].type = 'Instant'
                                  msg.send "No image for that card. Sorry." +
                                    '\n*Name:* '+ c[0].name +
                                    '\n*CMC:* ' + c[0].manaCost +
                                    '\n*Type:* ' + c[0].type + 
                                    '\n*Text:* ' + c[0].text
                            else
                                msg.send "No image for that card. Sorry." +
                                '\n*Name:* '+ c[0].name +
                                '\n*CMC:* ' + c[0].manaCost +
                                '\n*Type:* ' + c[0].type + 
                                '\n*Text:* ' + c[0].text +
                                '\n*PT:* ' + c[0].power + '/' + c[0].toughness
                    else
                        msg.send "I couldnt find #{card_name} :ham:")

                                 