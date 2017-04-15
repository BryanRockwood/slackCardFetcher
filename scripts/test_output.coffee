{
  "name": "Card_Fetcher",
  "version": "0.0.0",
  "private": true,
  "author": "Rocky",
  "description": "Finds cards when we ask for them",
  "dependencies": {
    "hubot": "^2.19.0",
    "hubot-diagnostics": "0.0.1",
    "hubot-google-images": "^0.2.6",
    "hubot-google-translate": "^0.2.0",
    "hubot-help": "^0.2.0",
    "hubot-heroku-keepalive": "^1.0.2",
    "hubot-maps": "0.0.2",
    "hubot-pugme": "^0.1.0",
    "hubot-redis-brain": "0.0.3",
    "hubot-rules": "^0.1.1",
    "hubot-scripts": "^2.17.2",
    "hubot-shipit": "^0.2.0",
    "hubot-slack": "^4.3.4",
    "mtgsdk": "^0.1.1"
  },

  "scripts": {
    "start": "card_fetcher.coffee",
  }
  "engines": {
    "node": "0.10.x"
  }
}
