angular
    .module('myApp')
    .factory('myFactory', function ($http) {

        function getJobs() {
            return $http.get('data/curlJobs.json');
        }
        return {
            getJobs: getJobs
        }

    });