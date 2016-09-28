function alertSth() {

	alert("vlepw js");
}

var app = angular.module('invoice1', ['testModule', 'ngRoute']);
app.controller('InvoiceController', ['timeDisplay', '$scope', function InvoiceController(timeDisplay, $scope) {

	timeDisplay.getTime().then(function (response) {
		$scope.invoice.timeNow = response.data.time;
	});

	//this.qty = 1;
	this.cost = 2;
	// $scope.invoice.qty = 4;
	this.inCurr = 'EUR';
	this.currencies = ['USD', 'EUR', 'CNY'];
	this.usdToForeignRates = {
		USD: 1,
		EUR: 0.74,
		CNY: 6.09
	};

	this.total = function total(outCurr) {
		return this.convertCurrency(this.qty * this.cost, this.inCurr, outCurr);
	};
	this.convertCurrency = function convertCurrency(amount, inCurr, outCurr) {
		return amount * this.usdToForeignRates[outCurr] / this.usdToForeignRates[inCurr];
	};
	this.pay = function pay() {
		window.alert('Thanks!');
	};
}]);

app.config(function ($routeProvider) {
	$routeProvider.when('/red', {
		templateUrl: 'pages/red.html'
	}).when('/blue', {
		templateUrl: 'pages/blue.html'
	}).when('/ext', {
		templateUrl: 'ext.jsp'
	})

});