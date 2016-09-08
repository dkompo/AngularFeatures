angular.module('testModule', [])
	.factory('timeDisplay', function ($http) {

		var getTime = function () {
			return $http.get("http://date.jsontest.com")
			// .then(function (response) {
			// 	//return response.data.time;
			// 	//$scope.time = myData.time;
			// });
		}

		return {

			getTime: getTime
		};
	});
