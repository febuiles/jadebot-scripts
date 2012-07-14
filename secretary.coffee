# Description:
#   Display images of Gina, our sexy secretary.
#
# Commands:
#   hubot say hi - Shows a sexy secretary smiling.
#   hubot show titties - The same secretary, this time showing her titties.


# Taken from http://gallys.realitykings.com/bt/38/ (nsfw)
smiles = [
  "http://gcache.imagehost123.com/bt/38/1.jpg",
  "http://gcache.imagehost123.com/bt/38/2.jpg",
  "http://gcache.imagehost123.com/bt/38/3.jpg",
]

titties = [
  "http://gcache.imagehost123.com/bt/38/4.jpg",
  "http://gcache.imagehost123.com/bt/38/7.jpg",
]

module.exports = (robot) ->
  robot.respond /(say hi|smile|salud(a|e))/i, (msg) ->
    msg.send msg.random smiles

  robot.respond /(show (your )?titties|(muestr(a|e) (las? )?tetas?))/i, (msg) ->
    msg.send msg.random titties
