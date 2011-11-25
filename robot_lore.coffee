# jadebot is a real robot... you know :)
module.exports = (robot) ->
  # From: Hal (2001, A Space Odyssey)
  # http://www.imdb.com/title/tt0062622/quotes
  # Make more flexible
  robot.respond /(how are you|sup boy)(\?)?/i, (msg) ->
    msg.reply "I'm completely operational and all my circuits are functioning normally"
  robot.respond /Open the pod bay doors/i, (msg) ->
    msg.reply "I'm sorry. I'm afraid I can't do that."
  # Maybe too noisy.
  robot.hear /(fu+ck)|(mie+rda)/i, (msg) ->
    msg.reply "Look, I can see you're really upset about this. I honestly think you ought to sit down calmly, take a stress pill, and think things over."

  # From: StarTrek TNG
  # Here's plenty of stuff to be added. Couldn't think on the
  # right triggers.
  # http://www.cs.tut.fi/~albert/Quotes/TNG-quotes.html
  jokeReplies = ["Oh, of course, a human joke.",
                 "Most interesting. Could this be Human Joke Number 663?"]

  # Reply to lol's with more than 2 o's.
  # I don't want it to be too noisy.
  robot.hear /loo+l/i, (msg) ->
    msg.send msg.random jokeReplies
