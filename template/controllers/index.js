app

.controller("IndexCtrl", ["$scope", "loading", function($scope, loading) {

    $scope.items = ["Item #1", "Item #2", "Item #3"];

    $scope.loading = loading;
    $scope.loading.add("task-one");

}])

;
