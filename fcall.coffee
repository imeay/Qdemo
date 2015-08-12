Q = require 'q'
_ = require 'underscore'

test = ()->
  return arguments[0] + arguments[1]

Q.fcall(test,1,2).then (result)->
  console.log result
,(error)->
  console.error error.message