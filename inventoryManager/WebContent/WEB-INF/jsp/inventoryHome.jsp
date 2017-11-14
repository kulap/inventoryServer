<!DOCTYPE html>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<title>Inventory Home</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins">
<style>
body, h1, h2, h3, h4, h5 {
	font-family: "Poppins", sans-serif
}

body {
	font-size: 16px;
}

.w3-half img {
	margin-bottom: -6px;
	margin-top: 16px;
	opacity: 0.8;
	cursor: pointer
}

.w3-half img:hover {
	opacity: 1
}
</style>
<body>

	<!-- Sidebar/menu -->
	<nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding"
		style="z-index: 3; width: 300px; font-weight: bold;" id="mySidebar">
		<br> <a href="javascript:void(0)" onclick="w3_close()"
			class="w3-button w3-hide-large w3-display-topleft"
			style="width: 100%; font-size: 22px">Close Menu</a>
		<div class="w3-container">
			<h3 class="w3-padding-64">
				<b>The Awesome<br>Corp
				</b>
			</h3>
		</div>
		<div class="w3-bar-block">
			<a href="#" onclick="w3_close()"
				class="w3-bar-item w3-button w3-hover-white">Home</a> <a
				href="#addProduct" onclick="w3_close()"
				class="w3-bar-item w3-button w3-hover-white">Add Product</a> <a
				href="#services" onclick="w3_close()"
				class="w3-bar-item w3-button w3-hover-white">Services</a> <a
				href="#designers" onclick="w3_close()"
				class="w3-bar-item w3-button w3-hover-white">Designers</a> <a
				href="#packages" onclick="w3_close()"
				class="w3-bar-item w3-button w3-hover-white">Packages</a> <a
				href="#contact" onclick="w3_close()"
				class="w3-bar-item w3-button w3-hover-white">Contact</a>
		</div>
	</nav>

	<!-- Top menu on small screens -->
	<header
		class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
		<a href="javascript:void(0)" class="w3-button w3-red w3-margin-right"
			onclick="w3_open()">|||</a> <span>The Awesome Corp</span>
	</header>

	<!-- Overlay effect when opening sidebar on small screens -->
	<div class="w3-overlay w3-hide-large" onclick="w3_close()"
		style="cursor: pointer" title="close side menu" id="myOverlay"></div>

	<!-- !PAGE CONTENT! -->
	<div class="w3-main" style="margin-left: 340px; margin-right: 40px">

		<!-- Header -->
		<div class="w3-container" style="margin-top: 80px" id="showcase">
			<h1 class="w3-jumbo">
				<b>Inventory Home</b>
			</h1>
			<h1 class="w3-xxxlarge w3-text-red">
				<b>Scan.</b>
			</h1>
			<hr style="width: 50px; border: 5px solid red" class="w3-round">
			
		<!-- Scan Input -->
		<div class="row">
			<div class="col-sm-6">
				<input type="text" class="form-control" id="scannedCodeId">
				<button type="button" class="btn btn-primary"
					onclick="addScannedCode()">scan</button>
			</div>
			<br>
			<div id="scannedCodeDivId" class="col-sm-6">
				<table class="table table-striped" border="1">
					<thead>
						<tr>
							<th>Code</th>
							<th>Product</th>
							<th>Price</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody id="scannedCodeTBodyId">
					</tbody>
				</table>
			</div>
		</div>
		</div>

	<!-- Add New Product -->
	<div class="w3-container" id="addProduct" style="margin-top: 75px">
		<h1 class="w3-xxxlarge w3-text-red">
			<b>Add Product.</b>
		</h1>
		<hr style="width: 50px; border: 5px solid red" class="w3-round">
		<p>We are a interior design service that focus on what's best for
			your home and what's best for you!</p>
		<p>Some text about our services - what we do and what we offer. We
			are lorem ipsum consectetur adipiscing elit, sed do eiusmod tempor
			incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
			commodo consequat. Duis aute irure dolor in reprehenderit in
			voluptate velit esse cillum dolore eu fugiat nulla pariatur.
			Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
			officia deserunt mollit anim id est laborum consectetur adipiscing
			elit, sed do eiusmod tempor incididunt ut labore et dolore magna
			aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
			laboris nisi ut aliquip ex ea commodo consequat.</p>
	</div>

	<!-- Services -->
	<div class="w3-container" id="services" style="margin-top: 75px">
		<h1 class="w3-xxxlarge w3-text-red">
			<b>Services.</b>
		</h1>
		<hr style="width: 50px; border: 5px solid red" class="w3-round">
		<p>We are a interior design service that focus on what's best for
			your home and what's best for you!</p>
		<p>Some text about our services - what we do and what we offer. We
			are lorem ipsum consectetur adipiscing elit, sed do eiusmod tempor
			incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
			commodo consequat. Duis aute irure dolor in reprehenderit in
			voluptate velit esse cillum dolore eu fugiat nulla pariatur.
			Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
			officia deserunt mollit anim id est laborum consectetur adipiscing
			elit, sed do eiusmod tempor incididunt ut labore et dolore magna
			aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
			laboris nisi ut aliquip ex ea commodo consequat.</p>
	</div>

	<!-- Designers -->
	<div class="w3-container" id="designers" style="margin-top: 75px">
		<h1 class="w3-xxxlarge w3-text-red">
			<b>Designers.</b>
		</h1>
		<hr style="width: 50px; border: 5px solid red" class="w3-round">
		<p>The best team in the world.</p>
		<p>We are lorem ipsum consectetur adipiscing elit, sed do eiusmod
			tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
			veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
			ea commodo consequat. Duis aute irure dolor in reprehenderit in
			voluptate velit esse cillum dolore eu fugiat nulla pariatur.
			Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
			officia deserunt mollit anim id est laborum consectetur adipiscing
			elit, sed do eiusmod tempor incididunt ut labore et quis nostrud
			exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
		<p>
			<b>Our designers are thoughtfully chosen</b>:
		</p>
	</div>

	<!-- Packages / Pricing Tables -->
	<div class="w3-container" id="packages" style="margin-top: 75px">
		<h1 class="w3-xxxlarge w3-text-red">
			<b>Packages.</b>
		</h1>
		<hr style="width: 50px; border: 5px solid red" class="w3-round">
		<p>Some text our prices. Lorem ipsum consectetur adipiscing elit,
			sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
			enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
			ut aliquip ex ea commodo consequat. Duis aute irure</p>
	</div>

	<div class="w3-row-padding">
		<div class="w3-half w3-margin-bottom">
			<ul class="w3-ul w3-light-grey w3-center">
				<li class="w3-dark-grey w3-xlarge w3-padding-32">Basic</li>
				<li class="w3-padding-16">Floorplanning</li>
				<li class="w3-padding-16">10 hours support</li>
				<li class="w3-padding-16">Photography</li>
				<li class="w3-padding-16">20% furniture discount</li>
				<li class="w3-padding-16">Good deals</li>
				<li class="w3-padding-16">
					<h2>$ 199</h2> <span class="w3-opacity">per room</span>
				</li>
				<li class="w3-light-grey w3-padding-24">
					<button class="w3-button w3-white w3-padding-large w3-hover-black">Sign
						Up</button>
				</li>
			</ul>
		</div>

		<div class="w3-half">
			<ul class="w3-ul w3-light-grey w3-center">
				<li class="w3-red w3-xlarge w3-padding-32">Pro</li>
				<li class="w3-padding-16">Floorplanning</li>
				<li class="w3-padding-16">50 hours support</li>
				<li class="w3-padding-16">Photography</li>
				<li class="w3-padding-16">50% furniture discount</li>
				<li class="w3-padding-16">GREAT deals</li>
				<li class="w3-padding-16">
					<h2>$ 249</h2> <span class="w3-opacity">per room</span>
				</li>
				<li class="w3-light-grey w3-padding-24">
					<button class="w3-button w3-red w3-padding-large w3-hover-black">Sign
						Up</button>
				</li>
			</ul>
		</div>
	</div>

	<!-- Contact -->
	<div class="w3-container" id="contact" style="margin-top: 75px">
		<h1 class="w3-xxxlarge w3-text-red">
			<b>Contact.</b>
		</h1>
		<hr style="width: 50px; border: 5px solid red" class="w3-round">
		<p>Do you want us to style your home? Fill out the form and fill
			me in with the details :) We love meeting new people!</p>
		<form action="/action_page.php" target="_blank">
			<div class="w3-section">
				<label>Name</label> <input class="w3-input w3-border" type="text"
					name="Name" required>
			</div>
			<div class="w3-section">
				<label>Email</label> <input class="w3-input w3-border" type="text"
					name="Email" required>
			</div>
			<div class="w3-section">
				<label>Message</label> <input class="w3-input w3-border" type="text"
					name="Message" required>
			</div>
			<button type="submit"
				class="w3-button w3-block w3-padding-large w3-red w3-margin-bottom">Send
				Message</button>
		</form>
	</div>

	<!-- End page content -->
	</div>

	<!-- W3.CSS Container -->
	<div class="w3-light-grey w3-container w3-padding-32"
		style="margin-top: 75px; padding-right: 58px">
		<p class="w3-right">
			Powered by <a href="https://www.w3schools.com/w3css/default.asp"
				title="W3.CSS" target="_blank" class="w3-hover-opacity">w3.css</a>
		</p>
	</div>
</body>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
	// Script to open and close sidebar
	function w3_open() {
		document.getElementById("mySidebar").style.display = "block";
		document.getElementById("myOverlay").style.display = "block";
	}

	function w3_close() {
		document.getElementById("mySidebar").style.display = "none";
		document.getElementById("myOverlay").style.display = "none";
	}

	// Modal Image Gallery
	function onClick(element) {
		document.getElementById("img01").src = element.src;
		document.getElementById("modal01").style.display = "block";
		var captionText = document.getElementById("caption");
		captionText.innerHTML = element.alt;
	}

	function addScannedCode() {
		$.ajax({
			type : "GET",
			url : "/inventoryManager/scanProduct?productCode="
					+ document.getElementById("scannedCodeId").value,
			success : function(result) {
				loadNewDataForscannedElement(result);
			},
			error : function(result) {
			}
		});
	}

	function loadNewDataForscannedElement(result) {
		var htmlString = "";
		var divToBeLoaded = document.getElementById("scannedCodeTBodyId");
		for (var i = 0; i < result.length; i++) {
			htmlString += "<tr><td>" + result[i].code + "</td><td>"+result[i].name+" </td> <td>"+result[i].price+" </td></tr>";
		}
		divToBeLoaded.insertAdjacentHTML('beforeend', htmlString);
	}
</script>
</html>
