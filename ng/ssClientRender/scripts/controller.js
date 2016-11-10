/**********Defines controllers used in ngController directive********/
angular
    .module("ssClientRenderApp")
    .controller("ssClientController", function ($scope, $http) {
        $http({
                method: 'Get',
                url: _spPageContextInfo.webAbsoluteUrl + "/_api/web/lists/getByTitle('Sales Strategy')/items?$select=Title,Industry,Size,Spend",
                headers: {
                    "Accept": "application/json;odata=verbose"
                }
            })
            .success(function (data, status, headers, config) {
                $scope.clients = data.d.results;
                /*NOTE: .d is a wrapper to ensure payload is a JSON object as opposed to an array*/
                console.log($scope.clients);
            })
            .error(function (data, status, headers, config) {});

        function ($)
    });