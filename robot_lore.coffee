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

  # Reply to lol's with more than 2 o's.
  # I don't want it to be too noisy.
  robot.hear /loo+l/i, (msg) ->
    jokeReplies = ["Oh, of course, a human joke.",
                   "Most interesting. Could this be Human Joke Number 663?"]
    msg.send msg.random jokeReplies

  robot.hear /cocaina/i, (msg) ->
    partyReplies = ["This calls for a party, baby! I'm ordering a hundred kegs, " +
                    "a hundred hookers, and a hundred Elvis impersonators who aren't "+
                    "above a little hooking, should the occasion arise!",
                    #data
                    "Indications of what humans would call, 'A wild party'?"]
    msg.send msg.random partyReplies

  robot.respond /<3|I love you/i, (msg) ->
    loveReplies = [ # Bender
                   "Humans dating robots is sick. You people wonder why I'm still single? " +
                   "It's 'cause all the fine robot sisters are dating humans!",
                   "I haven't felt much of anything since my guinea pig died.",
                   "I love you too. Not in the way the ancient Greeks. " +
                   "But in the way a robot loves a human. A human loves a dog. And occasionally, a gorilla loves a kitty."]
    msg.send msg.random loveReplies

