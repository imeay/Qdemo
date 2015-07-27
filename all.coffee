Q = require 'q'
_ = require 'underscore'

p = (data)->
  Q.promise (resolve,reject)->
    if data instanceof Object && !(data instanceof Array)
      resolve data
    else
      reject new Error 'data is not obj'

collection = [
  {category:"可比克"}
  {category:"乐事"}
  ,{}
]

allPromise = _.map collection,(v,i)->
  return  p v

Q.all(allPromise).then (result)->
  console.log result
.catch (error)->
  console.log error