# card_name = new Regex("#{ name }", "i")
# request = require('mtg sdk')
module.exports = (robot)->
 	robot.hear /Seth/i, (res) ->
#	robot.hear card_name,  (res) ->
#		robot.client.web # call https://api.magicthegathering.io/v1/cards/<MultiverseId>
		res.send "PRAAAHBABLY better known as SaffronOlive"
#	success = "Success!"
#	gatherer_api = "https://api.magicthegathering.io/v1/cards/<" + card_name + ">"
#	request.get {uri: gatherer_api, json: true}, (err,r,body) ->
#		if err
#			res.send err
#		else
#		    res.send success
