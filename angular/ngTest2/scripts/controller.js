angular
//myApp defined in app.js so, doesn't need .module("myApp", []) to
//instantiate
    .module("ngTest2")
    // define myController to be used by the ngController directive
    ///////////////////Creates the view/////////////////////////
    .controller("myCtrl", function ($scope) {
        //Sets the value contained by myData Angular Exppression in index.html
        var myData = [{
            Client: 'Client1',
            Industry: 'ind1',
            size: 'lg'
        }, {
            Client: 'Client2',
            Industry: 'ind2',
            size: 'md'
        }, {
            Client: 'Client3',
            Industry: 'ind3',
            size: 'sm'
        }];
        $scope.myData = myData;
        console.log(myData[0].Client);
        $scope.client = myData[0].Client;

        $scope.msg = 'Hello, ';
        $scope.pickName = 'Ryan';
        $scope.welcomeMsg = function () {
            var response = $scope.msg + $scope.pickName;
            return response;
        }



    });