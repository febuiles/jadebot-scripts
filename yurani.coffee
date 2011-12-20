# BVC Yurani info.
#
# yura me <ticker> - show latest price value for <ticker>

module.exports = (robot) ->
  robot.respond /yura me (.*)/i, (msg) ->
    ticker = msg.match[1]
    msg.http("http://yurani.pemberthy.com/stocks/#{ticker}.json").
      get() (err, res, body) ->
        try
          json = JSON.parse(body)
          date = new Date json.created_at
          msg.send "$#{json.price} - #{date}"
        catch error
          msg.send "Invalid ticker"
