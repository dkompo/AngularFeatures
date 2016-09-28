
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <c:import url="pages/head.jsp" />

        <title>$Title$</title>

    </head>
    <body ng-app="invoice1">
        <c:url value="/ext.jsp">Testtt</c:url>
        <button onclick="alertSth()">alert</button>
        <a href="#/red">Red</a>
        <a href="#/blue">blue</a>
        <a href="#/ext">Grid</a>
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
