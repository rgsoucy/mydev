System.register((void 0), [], function() {
  "use strict";
  var myController = function myController($scope, $log) {
    'ngInject';
    this.name = 'Ryan';
  };
  ($traceurRuntime.createClass)(myController, {}, {});
  var $__default = myController;
  return {get default() {
      return $__default;
    }};
});
