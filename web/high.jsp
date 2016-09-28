<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>Highchart example</title>
        <c:import url="pages/head.jsp" />s
    </head>
    <body ng-app="highcharts">
        <div ng-controller="HichartsController">
            <div id="container" style="width:100%; height:400px;"></div>
            <div id="chart2"></div>
            <div id="chart3"></div>
            <button ng-click="requestData()"></button>
        </div>
    </body>
</html>
