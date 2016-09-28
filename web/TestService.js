angular.module('testModule', [])
	.factory('timeDisplay', function ($http) {

		var getTime = function () {
			return $http.get("http://date.jsontest.com")
			// .then(function (response) {
			// 	//return response.data.time;
			// 	//$scope.time = myData.time;
			// });
		}

		var getSampleData = function () {
			return $http.get("http://www.highcharts.com/studies/live-server-data.php")
		}
		return {

			getTime: getTime,
			getSampleData: getSampleData
		};
	});
