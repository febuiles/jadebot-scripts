# Returns a random phrase of robot lore.
#
# Quotes taken from:
# * 2001 - http://www.imdb.com/title/tt0062622/quotes
# * Star Trek TNG - http://www.cs.tut.fi/~albert/Quotes/TNG-quotes.html
# * Futurama - http://en.wikiquote.org/wiki/Futurama
#
# The bot listens to several phrases and returns a random quote, please read the source
# to learn more about the triggers.

module.exports = (robot) ->
  # Make more flexible
  robot.respond /(how are you|sup boy)(\?)?/i, (msg) ->
    msg.reply "I'm completely operational and all my circuits are functioning normally"
  robot.respond /Open the pod bay doors/i, (msg) ->
    msg.reply "I'm sorry. I'm afraid I can't do that."
  # Maybe too noisy.
  robot.hear /(fu+ck)|(mie+rda)/i, (msg) ->
    msg.reply "Look, I can see you're really upset about this. I honestly think you ought to sit down calmly, take a stress pill, and think things over."

  # Reply to lol's with more than 2 O's, don't want it to be too noisy.
  robot.hear /loo+l/i, (msg) ->
    jokeReplies = ["Oh, of course, a human joke.",
                   "Most interesting. Could this be Human Joke Number 663?"]
    msg.send msg.random jokeReplies

  robot.hear /cocaina|cocaine|perico/i, (msg) ->
    partyReplies = ["This calls for a party, baby! I'm ordering a hundred kegs, " +
                    "a hundred hookers, and a hundred Elvis impersonators who aren't "+
                    "above a little hooking, should the occasion arise!",
                    "Indications of what humans would call, 'A wild party'?"]
    msg.send msg.random partyReplies

  robot.respond /<3|I love you/i, (msg) ->
    loveReplies = [
                   "Humans dating robots is sick. You people wonder why I'm still single? " +
                   "It's 'cause all the fine robot sisters are dating humans!",
                   "I haven't felt much of anything since my guinea pig died.",
                   "I love you too. Not in the way the ancient Greeks. " +
                   "But in the way a robot loves a human. A human loves a dog. And occasionally, a gorilla loves a kitty."]
    msg.send msg.random loveReplies

