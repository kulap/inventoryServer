<!DOCTYPE html>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE = edge">
<meta name="viewport" content="width = device-width, initial-scale = 1">
<title>InventoryManager</title>
<!-- Bootstrap -->
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

	<div class="container text-center">
		<h2>Inventory manager</h2>
		<input type="text" class="form-control" id="productId"  on="handleKeyPressForProductScan()">
	</div>

	<div class="container text-center">
		<h2>Inventory Added</h2>
		<c:forEach items="${strList}" var="str">
			<c:out value="${str}"></c:out>
		</c:forEach>
	</div>

</body>
<script type="text/javascript">
	var strArr = [""];
	var count = 0;
	function handleKeyPressForProductScan() {
		var inputVal = document.getElementById("productId").value
		strArr[count] = inputVal;
		count  = count + 1;
		alert("count: "+count+" inputVal:"+inputVal);
	}
</script>
</html>