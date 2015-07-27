// Generated by CoffeeScript 1.9.2
(function() {
  var Q, promise;

  Q = require('q');

  promise = Q.Promise(function(reslove, reject) {
    var flag;
    flag = true;
    if (flag) {
      return reslove({
        flag: true
      });
    } else {
      return reject(new Error("flag is false"));
    }
  });

  promise.then(function(v) {
    return console.log(v);
  })["catch"](function(error) {
    return console.log("error :" + error);
  });

}).call(this);