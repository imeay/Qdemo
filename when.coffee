Q = require 'q'

Q.when 1
,(result)->
  console.log result
,(error)->
  console.log error

Q.fcall(()->
  return 1
).then (result)->
  console.log result