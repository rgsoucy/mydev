/**********Defines controllers used in ngController directive********/
angular
    .module("myApp")
    .controller("myController", function ($scope, $http, myFactory) {
        //  Add controller code
        $scope.expression = 'Default';

        $scope.jobs;
        myFactory.getJobs().success(function (data) {
            $scope.jobs = data;
        }).error(function (error) {
            console.log(error);
        });
        //        $http({
        //            url: 'https://public-rest4.bullhornstaffing.com/rest-services/1XOC9/query/JobBoardPost',
        //            method: 'GET',
        //            params: {
        //                where: '(isOpen=true)',
        //                fields: 'id,title,publishedCategory(id,name),address(city,state),employmentType,dateLastPublished,publicDescription,isOpen,isPublic,isDeleted',
        //                count: '20',
        //                orderBy: '-dateLastPublished',
        //                start: '0'
        //            }
        //        }).then(function success(response) {
        //            //success
        //            $scope.jobs = data.d.results;
        //            console.log($scope.clients);
        //        }, function errorCallback() {});
        //
        //        function ($)

    });