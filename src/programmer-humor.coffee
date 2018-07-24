# Description:
#   Pulls a random image from the top posts of the week off of http://reddit.com/r/programmerhumor/
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
# myhubot make me laugh
# myhubot tell me a programmer joke

module.exports = (robot) ->

	robot.respond /make me laugh|tell me a programmer joke/i, (msg) ->
		msg.http("https://www.reddit.com/r/ProgrammerHumor.json?sort=top&t=week")
		.get() (err, res, body) ->
			try
				# get pictures from response
				posts = JSON.parse(body)
				posts = posts["data"]["children"]
				jokes = []
				for post in posts
					if (post["data"]["post_hint"] && post["data"]["post_hint"] == "image")
						jokes.push(post["data"]["url"])
				msg.send msg.random jokes
			catch error
				robot.logger.error "[programmer-humor] #{error}"
				msg.send "Ouch!  Please don't do that again until I'm fixed. :("
				return