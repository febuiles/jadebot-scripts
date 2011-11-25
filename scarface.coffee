# Makes hubot act as Tony Montana.
#
# anything containing <tony|scarface|montana> - Displays a Tony's quote.
#
tonyQuotes = [
  "You don't got nothing to do with your life. Why don't you get a job? Work with lepers. Blind kids. Anything's gotta be better than lying around all day waiting for me to fuck you.",
  "What you lookin' at? You all a bunch of fuckin' assholes.",
  "You need people like me. You need people like me so you can point your fuckin' fingers and say, \"That's the bad guy.\" So... what that make you? Good? You're not good.",
  "Me, I always tell the truth. Even when I lie.",
  "In this country, you gotta make the money first. Then when you get the money, you get the power. Then when you get the power, then you get the women. ",
  "Who put this thing together? Me, that's who! Who do I trust? Me!"
]

module.exports = (robot) ->
  robot.respond /.*(tony|scarface|montana).*/i, (msg) ->
    msg.send msg.random tonyQuotes
