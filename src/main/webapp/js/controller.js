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

        //zapytanie do serwera
        $http({
            method: 'GET',
            url: 'https://api.openweathermap.org/data/2.5/weather',
            params: {
                appid: '5ed79f6cb308076cbb01662a0a403db6',
                q: 'Lublin,pl',
                units: 'metric'
            }

        }).then(
            function (response) {
                console.log("jestem tutaj")
                $scope.weather = response.data
            }
        );
    }
});