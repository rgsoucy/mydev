System.register((void 0), [], function() {
  "use strict";
  var myController = $traceurRuntime.assertObject(System.get("controllers/myController.js")).default;
  angular.module('app.AppJsModule', []).controller('myController', myController);
  return {};
});
