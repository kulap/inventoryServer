<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE = edge">
<meta name="viewport" content="width = device-width, initial-scale = 1">
<title>MoneyManager</title>
<!-- Bootstrap -->
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"
	rel="stylesheet">
<jsp:useBean id="transactions" scope="request" type="java.util.List" />
</head>
<body>
	<div id="result">
		<H1>All Transaction</H1>
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script
			src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
		<div class="container-fluid ">
			<c:forEach items="${transactions}" var="transaction">
				<div class="row">
					<div class="well well-sm">
						<div class="btn-group">
							<button type="button" class="btn btn-default"
								onclick="viewTransactionDetails('${transaction.userId}','${transaction.transactionId}');">${transaction.title}</button>
							<button type="button" class="btn btn-warning"
								onclick="editTransaction('${transaction.transactionId}');">Edit</button>
							<button type="button" class="btn btn-danger"
								onclick="completeTransaction('${transaction.userId}','${transaction.transactionId}');">Complete</button>
						</div>
					</div>
				</div>
			</c:forEach>
			<div class="text-center">
				<button type="button" class="btn btn-success" id="addEditButton"
					onclick="addTransactionDetails('${transactionsWrapper.userId}');">Add
					New Transaction</button>
			</div>
		</div>
		<script type="text/javascript">
			function viewTransactionDetails(userId, transactionId) {
				$.ajax({
					type : "GET",
					url : "/moneyManager/viewTransactionDetails?userId="
							+ userId + "&transactionId=" + transactionId,
					success : function(result) {
						$('#result').html(result);
					},
					error : function(result) {
					}
				});
			}

			function completeTransaction(userId,transactionId) {
				$.ajax({
					type : "GET",
					url : "/moneyManager/completeTransaction?userId="+userId+"&transactionId="+ transactionId,
					success : function(result) {
						$('#result').html(result);
					},
					error : function(result) {
					}
				});
			}
			function addTransactionDetails(userId) {
				$.ajax({
					type : "GET",
					url : "/moneyManager/addEditTransactions?userId=" + userId,
					success : function(result) {
						$('#result').html(result);
					},
					error : function(result) {
					}
				});
			}

			function editTransaction(transactionId) {
				$.ajax({
					type : "GET",
					url : "/moneyManager/editTransaction?transactionId="+ transactionId,
					success : function(result) {
						$('#result').html(result);
					},
					error : function(result) {
					}
				});
			}
			
		</script>
	</div>
</body>
</html>