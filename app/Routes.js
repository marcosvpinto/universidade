var app = angular.module('main-App', ['ngRoute', 'angularUtils.directives.dirPagination']);

app.config(['$routeProvider',

    function($routeProvider) {
        $routeProvider.
        when('/', {
            templateUrl: 'index.php/templates/home.html',
            controller: 'AdminController'
        }).
        when('/cursos', {
            templateUrl: 'index.php/templates/cursos.html',
            controller: 'CursosController'
        });
    }
]);