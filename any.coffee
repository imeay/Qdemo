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

#只要有一个完成就reslove
Q.any(allPromise).then ()->
  console.log 'success'
,(error)->
  console.log error.message