// Generated by CoffeeScript 1.9.2
(function() {
  var Q;

  Q = require('q');

  Q.reject(new Error('it is wrong')).then(null, function(error) {
    return console.log(error);
  });

  Q.reject(new Error('it is wrong')["catch"](function(error) {
    return console.log(error);
  }));

}).call(this);
