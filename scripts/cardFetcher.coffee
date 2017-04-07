card_name = new Regex("#{ name }", "i")
request = require('mtg sdk')
module.exports = (robot,name)->
	robot.hear /[[/i, card_name, /]]/i, (res) ->
#		robot.client.web # call https://api.magicthegathering.io/v1/cards/<MultiverseId>
		res.send "fetching" + card_name
#	success = "Success!"
#	gatherer_api = "https://api.magicthegathering.io/v1/cards/<" + card_name + ">"
#	request.get {uri: gatherer_api, json: true}, (err,r,body) ->
#		if err
#			res.send err
#		else
#		    res.send success
# HUBOT_SLACK_TOKEN=xoxb-165953844230-aEWw1Kx3AYdZLApVNXW28bBT
