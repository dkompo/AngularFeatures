<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Title</title>
		<%--<c:import url="pages/head.jsp" />--%>
		<script type="text/javascript">
			//			Ext.onReady(function () {
			//				Ext.create('Ext.Panel', {
			//					renderTo: 'helloWorldPanel',
			//					height: 100,
			//					width: 200,
			//					title: 'Hello world',
			//					html: 'First Ext JS Hello World Program'
			//				});
			//			});
			Ext.onReady(function () {
				Ext.create('Ext.data.Store', {
					storeId: 'simpsonsStore',
					fields: ['name', 'email', 'phone'],
					data: [
						{name: 'Lisa', email: 'lisa@simpsons.com', phone: '555-111-1224'},
						{name: 'Bart', email: 'bart@simpsons.com', phone: '555-222-1234'},
						{name: 'Homer', email: 'homer@simpsons.com', phone: '555-222-1244'},
						{name: 'Marge', email: 'marge@simpsons.com', phone: '555-222-1254'}
					]
				});

				Ext.create('Ext.grid.Panel', {
					title: 'Simpsons',
					store: Ext.data.StoreManager.lookup('simpsonsStore'),
					columns: [
						{text: 'Name', dataIndex: 'name'},
						{text: 'Email', dataIndex: 'email', flex: 1},
						{text: 'Phone', dataIndex: 'phone'}
					],
					height: 200,
					width: 400,
					renderTo: Ext.getBody()
				});
			});
		</script>
	</head>
	<body>
	</body>
</html>