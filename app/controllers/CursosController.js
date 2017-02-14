app.controller('AdminController', function($scope, $http) {
    $scope.pools = [];
});

app.controller('CursosController', function(dataFactory, $scope, $http) {
    $scope.data = [];
    $scope.pageNumber = 1;
    $scope.libraryTemp = {};
    $scope.totalItemsTemp = {};
    $scope.totalItems = 0;
    $scope.pageChanged = function(newPage) {
        getResultsPage(newPage);
    };

    getResultsPage(1);

    function getResultsPage(pageNumber) {
        if (!$.isEmptyObject($scope.libraryTemp)) {
            dataFactory.httpRequest('cursos?search=' + $scope.searchText + '&page=' + pageNumber).then(function(data) {
                $scope.cursos = data.cursos;
                $scope.locais = data.locais;
                $scope.cursos_locais = data.cursos_locais;
                $scope.totalItems = data.total;
                $scope.pageNumber = pageNumber;
            });
        } else {
            dataFactory.httpRequest('cursos?page=' + pageNumber).then(function(data) {
                $scope.cursos = data.cursos;
                $scope.locais = data.locais;
                $scope.cursos_locais = data.cursos_locais;
                $scope.totalItems = data.total;
                $scope.pageNumber = pageNumber;
            });
        }
    }

});