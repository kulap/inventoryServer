<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="en">

<head>
<title>Inventory Manager</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="jumbotron text-center">
		<h1>Inventory</h1>
	</div>
		<%--INICIO knistane purchase--%>
	<div class="container">
		<button type="button" class="btn btn-info" data-toggle="modal"
		data-target="#myModal3">PURCHASE</button>
	</div>
	
	<div id="myModal3" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Purchase Product</h4>
				</div>
				<div class="modal-body">
					<form:form class="form-horizontal" method="post" modelAttribute="inventory" action="${purchaseProductUrl}">
						<div class="form-group">
							<form:input path="partNumber" type="text" class="form-control" id="partNumber"  />
							<form:errors path="partNumber" class="control-label" />
						</div>
						<div class="form-group">
							<form:input path="purchaseCount" type="text" class="form-control" id="purchaseCount" />
							<form:errors path="purchaseCount" class="control-label" />
						</div>
						<button type="submit" class="btn btn-success">SAVE</button>
					</form:form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<%--Fin knistane purchase--%>
	<%--INICIO knistane sell--%>
	<div class="container">
		<button type="button" class="btn btn-info" data-toggle="modal"
		data-target="#myModal2">SELL</button>
	</div>
	
	<div id="myModal2" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Sell Product</h4>
				</div>
				<div class="modal-body">
					<form:form class="form-horizontal" method="post" modelAttribute="inventory" action="${sellProductUrl}">
						<div class="form-group">
							<form:input path="partNumber" type="text" class="form-control" id="partNumber"  />
							<form:errors path="partNumber" class="control-label" />
						</div>
						<div class="form-group">
							<form:input path="sellCount" type="text" class="form-control" id="sellCount" />
							<form:errors path="sellCount" class="control-label" />
						</div>
						<button type="submit" class="btn btn-success">SAVE</button>
					</form:form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<%--Fin knistane sell--%>
	<div class="container">
		<button type="button" class="btn btn-info" data-toggle="modal"
			data-target="#myModal">ADD</button>
	</div>
	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Add Inventory</h4>
				</div>
				<div class="modal-body">
					<form:form class="form-horizontal" method="post" modelAttribute="product" action="${addProductUrl}">
						<div class="form-group">
							<form:input path="oemId" type="text" class="form-control" id="oemId" />
							<form:errors path="oemId" class="control-label" />
						</div>
						<div class="form-group">
							<form:input path="serialNumber" type="text" class="form-control" id="serialNumberId"  />
							<form:errors path="serialNumber" class="control-label" />
						</div>
						<%--Inicio knistane--%>
						<div class="form-group">
							<form:input path="productId" type="text" class="form-control" id="productId" />
							<form:errors path="productId" class="control-label" />
						</div>
						<div class="form-group">
							<form:input path="productName" type="text" class="form-control" id="productName"  />
							<form:errors path="productName" class="control-label" />
						</div>
						
						<div class="form-group">
							<form:input path="category" type="text" class="form-control" id="category" />
							<form:errors path="category" class="control-label" />
						</div>
						<div class="form-group">
							<form:input path="partNumber" type="text" class="form-control" id="partNumber"  />
							<form:errors path="partNumber" class="control-label" />
						</div>
						<div class="form-group">
							<form:input path="mrp" type="text" class="form-control" id="mrp" />
							<form:errors path="mrp" class="control-label" />
						</div>
						<div class="form-group">
							<form:input path="sellingPrice" type="text" class="form-control" id="sellingPrice"  />
							<form:errors path="sellingPrice" class="control-label" />
						</div>
						<div class="form-group">
							<form:input path="sellingDiscount" type="text" class="form-control" id="sellingDiscount" />
							<form:errors path="sellingDiscount" class="control-label" />
						</div>
						<div class="form-group">
							<form:input path="purchasePrice" type="text" class="form-control" id="purchasePrice"  />
							<form:errors path="purchasePrice" class="control-label" />
						</div>
						<div class="form-group">
							<form:input path="purchaseDiscount" type="text" class="form-control" id="purchaseDiscount" />
							<form:errors path="purchaseDiscount" class="control-label" />
						</div>
						<div class="form-group">
							<form:input path="description" type="text" class="form-control" id="description"  />
							<form:errors path="description" class="control-label" />
						</div>
						<div class="form-group">
							<form:input path="specification" type="text" class="form-control" id="specification" />
							<form:errors path="specification" class="control-label" />
						</div>
						<div class="form-group">
							<form:input path="warranty" type="text" class="form-control" id="warranty"  />
							<form:errors path="warranty" class="control-label" />
						</div>
						<div class="form-group">
							<form:input path="image" type="text" class="form-control" id="image" />
							<form:errors path="image" class="control-label" />
						</div>
						<div class="form-group">
							<form:input path="localReferenceCode" type="text" class="form-control" id="localReferenceCode"  />
							<form:errors path="localReferenceCode" class="control-label" />
						</div>
						<div class="form-group">
							<form:input path="minimumQuantity" type="text" class="form-control" id="minimumQuantity"  />
							<form:errors path="minimumQuantity" class="control-label" />
						</div>
						<%--Fin knistane--%>
						<button type="submit" class="btn btn-success">SAVE</button>
					</form:form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>