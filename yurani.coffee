# BVC Yurani info.
#
# yura me <ticker> - show latest price value for <ticker>

module.exports = (robot) ->
  robot.respond /yura me (.*)/i, (msg) ->
    ticker = msg.match[1]
    msg.http("http://yurani.pemberthy.com/api/stocks/#{ticker}.json").
      get() (err, res, body) ->
        try
          json = JSON.parse(body)
          variation = (json.variation * 100).toFixed(2)
          date = parseStockDate(json.created_at)
          msg.send "$#{json.price} #{variation}% #{date}"
        catch error
          msg.send "Invalid ticker"


parseStockDate = (stockDate) ->
  date = new Date stockDate
  hour = date.getHours()
  minutes = date.getMinutes()
  minutes = "0" + minutes if minutes < 10
  month = date.getMonth() + 1
  day = date.getDate()
  year = date.getFullYear()

  "#{hour}:#{minutes} #{day}/#{month}/#{year}"

