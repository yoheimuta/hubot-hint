# Description:
#   Displays all commandHelps related input words
#
# Commands:
#   hubot (.*) hint - Displays all commandHelps releated (.*)

searchExactly = (search, doc) ->
  return doc.match ///.*#{search}.*///

module.exports = (robot) ->
  robot.respond /(.*) hint$/i, (msg) ->
    search_words = msg.match[1].trim()

    messages = []

    for help in robot.helpCommands()
      continue unless searchExactly search_words, help
      messages.push help

    message   = messages.join "\n"
    message ||= '[None]'
    msg.send message
