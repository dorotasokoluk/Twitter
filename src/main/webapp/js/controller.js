let articleApp = angular.module('articleApp', []);

articleApp.controller('articleController', function ($scope, $http) {
    $scope.init = function () {
        $http({
            method: 'GET',
            url: 'api/articles',
            params: {}

        }).then(  // wykona się dopiero jak otrzyma jsona, request jest wysyłany na adres localhost + adres url
            function (response) {
                $scope.articles = response.data //json zostaje zamieniony na tablice obiektówi jest przypisany do nowej zmiennej
            }
        );
    }
});