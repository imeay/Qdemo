Q = require 'q'
_ = require 'underscore'

p = (data)->
  Q.promise (resolve,reject)->
    if data instanceof Object && !(data instanceof Array)
      resolve data
    else
      reject new Error 'data is not obj'

collection = [
  {category:"�ɱȿ�"}
  {category:"����"}
,{}
]

allPromise = _.map collection,(v,i)->
  return  p v

#ֻҪ��һ����ɾ�reslove
Q.any(allPromise).then ()->
  console.log 'success'
,(error)->
  console.log error.message