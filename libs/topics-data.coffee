# Description:
#   Hubot brain interface for hubot-reviewer-choice
#
# Author:
#   @sota1235

'use strict'

module.exports = class Topics
  TOPICS = 'TOPICS'

  constructor: (@robot) ->
    return

  # set data
  setData = (robot, data) ->
    robot.brain.set TOPICS, data

  # get all data
  getData = (robot) ->
    data = robot.brain.get(TOPICS) or {}
    return data

  # dump data
  dump: ->
    return getData(@robot)

  # delete all data
  deleteData: ->
    setData @robot, {}
