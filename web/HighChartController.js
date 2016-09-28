var app = angular.module('highcharts', ['testModule']);
app.controller('HichartsController', ['$scope', 'timeDisplay', '$timeout', function HichartsController($scope, timeDisplay, $timeout) {
	var chart3;

	$scope.requestData = function requestData() {
		timeDisplay.getTime().then(function (response) {
			var series = chart3.series[0],
				shift = series.data.length > 20; // shift if the series is longer than 20
			// add the point
			var createArr = [response.data.milliseconds_since_epoch, Math.floor(Math.random() * 100)]
			chart3.series[0].addPoint(eval(response), true, shift);
			$timeout(function () {
				requestData();
			}, 1000);
		});
	}

	Highcharts.chart('chart2', {

		xAxis: {
			categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
				'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
		},

		series: [{
			data: [29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]
		}]
	});

	chart3 = Highcharts.chart('chart3', {

		chart: {

			defaultSeriesType: 'spline',
			events: {
				load: $scope.requestData
			}
		},
		title: {
			text: 'Live random data'
		}
		,
		xAxis: {
			type: 'datetime',
			tickPixelInterval: 150,
			maxZoom: 20 * 1000
		}
		,
		yAxis: {
			minPadding: 0.2,
			maxPadding: 0.2,
			title: {
				text: 'Value',
				margin: 80
			}
		}
		,
		series: [{
			name: 'Random data',
			data: []
		}]
	})
	;

	Highcharts.chart('container', {
		chart: {
			type: 'bar'
		},
		title: {
			text: 'Fruit Consumption'
		},
		xAxis: {
			categories: ['Apples', 'Bananas', 'Oranges']
		},
		yAxis: {
			title: {
				text: 'Fruit eaten'
			}
		},
		series: [{
			name: 'Jane',
			data: [1, 0, 4]
		}, {
			name: 'John',
			data: [5, 7, 3]
		}]
	});
}]);