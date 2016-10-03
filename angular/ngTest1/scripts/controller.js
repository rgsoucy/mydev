angular
    .module("myApp")
    .controller("myController", ['$scope', '$log', '$filter', '$http', function ($scope, $log, $filter, $http) {
        $scope.myVar = '';
        $scope.name = 'Ryan';
        $scope.makeUpper = function () {
            return $filter('uppercase')($scope.myVar);
        };

        //watcher function
        $scope.$watch('myVar', function (newVal, oldVal) {
            $log.info("Changed!");
            $log.log('Old: ' + oldVal);
            $log.log('New: ' + newVal);
        });

    }]);