<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="en">

<head>
<title>Inventory Manager</title>
<%--INICIO knistane animating buttons--%>
<style>

#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 80%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

.button1 {
  padding: 15px 25px;
  font-size: 15px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button1:hover {background-color: #3e8e41}

.button1:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}


.button2 {
  padding: 15px 25px;
  font-size: 15px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button2:hover {background-color: #3e8e41}

.button2:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}


.button3 {
  padding: 15px 25px;
  font-size: 15px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button3:hover {background-color: #3e8e41}

.button3:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}


.button4 {
  padding: 15px 25px;
  font-size: 15px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button4:hover {background-color: #3e8e41}

.button4:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>
<%--FIN knistane animating buttons--%>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
<%-- <link href="<c:url value="/WebContent/css/inventoryManager.css" />" rel="stylesheet" >
 --%>	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="jumbotron text-center">
		<h1>Rohit's Inventory</h1>
	</div>
	<%--INITIA knistane trial buttons--%>
	<div>
		<button type="button" class="button1" data-toggle="modal"
		data-target="#myModal3">PURCHASE</button>

		<button type="button" class="button2" data-toggle="modal"
		data-target="#myModal2">SELL</button>
		
		<button type="button" class="button3" data-toggle="modal"
		data-target="#myModal4">PROFIT CALCULATOR</button>
		
		<div class="text-right">
		<button type="button" class="button4" data-toggle="modal"
		data-target="#myModal">REGISTER NEW PRODUCT</button>
		</div>
	</div>	
<h2>SEARCH</h2>
<div>
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search your products by Name" title="Type in a product">

<div>
	<table id="myTable">
		<tr class="header">
			<th style="width: 25%;">NAME</th>
			<th style="width: 15%;">PART NUMBER</th>
			<th style="width: 15%;">PURCHASE PRICE</th>
			<th style="width: 15%;">MRP</th>
			<th style="width: 20%;">SEARCH PLACE</th>
			<th style="width: 30%;">DESCRIPTION</th>
		</tr>
		<c:forEach var="listValue" items="${lists}">
				<tr>
    			<td>${listValue.productName}</td>
    			<td>${listValue.partNumber}</td>
    			<td>${listValue.purchasePrice}</td>
    			<td>${listValue.mrp}</td>
    			<td>${listValue.localReferenceCode}</td>
    			<td>${listValue.description}</td>
    			</tr>
		</c:forEach>
	</table>
</div>	
	<%--FIN knistane trial buttons--%>
		<%--INICIO knistane purchase--%>
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
						<p> PART NUMBER</p>
							<form:input path="partNumber" type="text" class="form-control" id="partNumber"  />
							<form:errors path="partNumber" class="control-label" />
						</div>
						<div class="form-group">
						<p> PURCHASE COUNT</p>
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
						<p> PART NUMBER</p>
							<form:input path="partNumber" type="text" class="form-control" id="partNumber"  />
							<form:errors path="partNumber" class="control-label" />
						</div>
						<div class="form-group">
						<p> SELL COUNT</p>
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
						<p> OEM ID</p>
							<form:input path="oemId" type="text" class="form-control" id="oemId" />
							<form:errors path="oemId" class="control-label" />
						</div>
						<div class="form-group">
						<p> SERIAL NUMBER</p>
							<form:input path="serialNumber" type="text" class="form-control" id="serialNumberId"  />
							<form:errors path="serialNumber" class="control-label" />
						</div>
						<%--Inicio knistane--%>
						<div class="form-group">
						<p> PRODUCT ID</p>
							<form:input path="productId" type="text" class="form-control" id="productId" />
							<form:errors path="productId" class="control-label" />
						</div>
						<div class="form-group">
						<p> PRODUCT NAME</p>
							<form:input path="productName" type="text" class="form-control" id="productName"  />
							<form:errors path="productName" class="control-label" />
						</div>
						
						<div class="form-group">
						<p> CATEGORY</p>
							<form:input path="category" type="text" class="form-control" id="category" />
							<form:errors path="category" class="control-label" />
						</div>
						<div class="form-group">
						<p> PART NUMBER</p>
							<form:input path="partNumber" type="text" class="form-control" id="partNumber"  />
							<form:errors path="partNumber" class="control-label" />
						</div>
						<div class="form-group">
						<p> MRP</p>
							<form:input path="mrp" type="text" class="form-control" id="mrp" />
							<form:errors path="mrp" class="control-label" />
						</div>
						<div class="form-group">
						<p> SELLING PRICE</p>
							<form:input path="sellingPrice" type="text" class="form-control" id="sellingPrice"  />
							<form:errors path="sellingPrice" class="control-label" />
						</div>
						<div class="form-group">
						<p> SELLING DISCOUNT</p>
							<form:input path="sellingDiscount" type="text" class="form-control" id="sellingDiscount" />
							<form:errors path="sellingDiscount" class="control-label" />
						</div>
						<div class="form-group">
						<p> PURCHASE PRICE</p>
							<form:input path="purchasePrice" type="text" class="form-control" id="purchasePrice"  />
							<form:errors path="purchasePrice" class="control-label" />
						</div>
						<div class="form-group">
						<p> PURCHASE DISCOUNT</p>
							<form:input path="purchaseDiscount" type="text" class="form-control" id="purchaseDiscount" />
							<form:errors path="purchaseDiscount" class="control-label" />
						</div>
						<div class="form-group">
						<p> DESCRIPTION</p>
							<form:input path="description" type="text" class="form-control" id="description"  />
							<form:errors path="description" class="control-label" />
						</div>
						<div class="form-group">
						<p> SPECIFICATION</p>
							<form:input path="specification" type="text" class="form-control" id="specification" />
							<form:errors path="specification" class="control-label" />
						</div>
						<div class="form-group">
						<p> WARRANTY</p>
							<form:input path="warranty" type="text" class="form-control" id="warranty"  />
							<form:errors path="warranty" class="control-label" />
						</div>
						<div class="form-group">
						<p> IMAGE</p>
							<form:input path="image" type="text" class="form-control" id="image" />
							<form:errors path="image" class="control-label" />
						</div>
						<div class="form-group">
						<p> LOCAL REFERENCE NUMBER</p>
							<form:input path="localReferenceCode" type="text" class="form-control" id="localReferenceCode"  />
							<form:errors path="localReferenceCode" class="control-label" />
						</div>
						<div class="form-group">
						<p> MINIMUM QUANTITY IN STOCK</p>
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
</div>
</body>
<script>
function myFunction() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
</html>