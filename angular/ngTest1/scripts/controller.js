angular
    .module("myApp")
    .controller("myController", ['$scope', '$log', '$filter', '$http', function ($scope, $log, $filter, $http) {

        $log.info("Hello World!");
        $scope.name = 'Ryan';


    }]);