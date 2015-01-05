app

.factory("loading", function() {
    function loading() {
        var $scope = this;
        $scope.val = {};
        return $scope;
    }

    loading.prototype.add = function(name) {
        var $scope = this;
        if ($scope.val[name]) {
            $scope.val[name]++;
        } else {
            $scope.val[name] = 1;
        }
        return $scope;
    };

    loading.prototype.del = function(name) {
        var $scope = this;
        if ($scope.val[name]) {
            $scope.val[name]--;
        } else {
            $scope.val[name] = 0;
        }
        return $scope;
    };

    loading.prototype.isLoading = function(name) {
        var $scope = this;
        return !!$scope.val[name];
    };

    return new loading();
})

;
