# jadebot is a real robot... you know :)
module.exports = (robot) ->
  # From: Hal (2001, A Space Odyssey)
  # http://www.imdb.com/title/tt0062622/quotes
  # Make more flexible
  robot.respond /how are you(\?)?/i, (msg) ->
    msg.reply "I'm completely operational and all my circuits are functioning normally"
  robot.respond /Open the pod bay doors/i, (msg) ->
    msg.reply "I'm sorry. I'm afraid I can't do that."
  # Maybe too noisy.
  robot.hear /(fu+ck)|(mie+rda)/i, (msg) ->
    msg.reply "Look, I can see you're really upset about this. I honestly think you ought to sit down calmly, take a stress pill, and think things over."