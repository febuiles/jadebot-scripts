# They see me rollin', they hatin'
#
# rolling|rollin'|rollin - returns a random "They see me rollin'" image.

rolling = [
  "http://s3.amazonaws.com/kym-assets/photos/images/newsfeed/000/147/111/powerwheelswheeliehatin.gif",
  "http://www.ozskier.com/mmp/wp-content/uploads/2009/12/509728958_7b32d79696.jpg",
  "http://edge.ebaumsworld.com/picture/kissfan1267/TheySeeMeRollin.png",
  "http://www.hotlikesauce.com/wp-content/uploads/2009/10/10.13.09-They-See-Me-Rollin-They-Hatin.jpg",
  "http://www.motifake.com/image/demotivational-poster/0805/when-they-see-me-rollin-demotivational-poster-1212006753.jpg",
  "http://lovefunfun.com/files/lovefunfun/lovefunfun/they%20see%20me%20rollin-shopping%20cart.jpg"
]

module.exports = (robot) ->
  robot.respond /(rolling|rollin\'|rollin)/i, (msg) ->
    msg.send msg.random rolling
