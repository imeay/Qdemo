Q = require 'q'
# 创建promise对象

promise = Q.Promise((reslove,reject)->
  flag = true
  if flag
    reslove {flag:true}
  else
    reject new Error("flag is false")
)
promise.then((v)->
  console.log v
).catch (error)->
  console.log "error :" + error

