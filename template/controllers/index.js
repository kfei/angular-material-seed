app

.controller("IndexCtrl",
        ["$scope", "$translate", "$mdBottomSheet", "loading",
        function($scope, $translate, $mdBottomSheet, loading) {

    $scope.items = ["Item #1", "Item #2", "Item #3"];

    $scope.loading = loading;
    $scope.loading.add("task-one");

    $translate.use("zh_tw");

    $scope.showLangBottomSheet = function($event) {
        $mdBottomSheet.show({
            templateUrl: "partials/lang.html",
            controller: "LangCtrl",
            targetEvent: $event
        }).then(function(clickedItem) {
            $translate.use(clickedItem.lang);
        });
    };

}])

;
