# Forever Alone
#
# forever alone - returns the forever alone message

module.exports = (robot) ->


module.exports = (robot) ->
  robot.hear /(forever alone|muñoz)/i, (msg) ->
    msg.send "http://s3.amazonaws.com/kym-assets/entries/icons/original/000/003/619/Untitled-1.jpg"
