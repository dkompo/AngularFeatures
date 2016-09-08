<%--
  Created by IntelliJ IDEA.
  User: uocin
  Date: 9/6/2016
  Time: 11:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>$Title$</title>
        <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
        <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular-route.js"></script>
        <script src="TestService.js"></script>
        <script src="TestController.js"></script>
    </head>
    <body ng-app="invoice1">
        <button onclick="alertSth()">alert</button>
        <a href="#/red">Red</a>
        <a href="#/blue">blue</a>
        <div ng-controller="InvoiceController as invoice">
            <b>Invoice:</b>
            <div>
                Quantity: <input type="number" min="0" ng-model="invoice.qty" required>
            </div>
            <div>
                Costs: <input type="number" min="0" ng-model="invoice.cost" required>
                <select ng-model="invoice.inCurr">
                    <option ng-repeat="c in invoice.currencies">{{c}}</option>
                </select>
            </div>
            <div>
                <b>Total:</b>
                <span ng-repeat="c in invoice.currencies">
      {{invoice.total(c) | currency:c}}
    </span>
                <button class="btn" ng-click="invoice.pay()">Pay</button>
            </div>
            <h1>{{invoice.timeNow}}</h1>
            <h2>{{mitsos}}</h2>
        </div>
        <div ng-view></div>
    </body>
</html>
