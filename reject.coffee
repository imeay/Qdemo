Q = require 'q'

Q.reject(new Error('it is wrong')).then null,(error)->
  console.log error

#or

Q.reject new Error('it is wrong').catch (error)->
  console.log error