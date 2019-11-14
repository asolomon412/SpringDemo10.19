<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My First Spring Demo</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/sketchy/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-N8DsABZCqc1XWbg/bAlIDk7AS/yNzT5fcKzg/TwfmTuUqZhGquVmpb5VvfmLcMzp"
	crossorigin="anonymous">
	<link href="styles.css" rel="stylesheet">
</head>
<body>
	<div class="container">
	
	<h1>Hello World!</h1>
	
	<h2>${test}</h2>
	
	${5+ 5}
	
	<h1>${personTest }</h1>
	<hr>
	<h1>This is using @RequestParams</h1>
	<!-- the action referenced below should match a @RequestMapping 
	in the Controller to consume the input -->
	<form action="add-person" method="post">
		First Name: <input type="text" name="first" required>
		Last Name: <input type="text" name="last" required>
		Age: <input type="number" name="age" required>
		<input class="btn-primary" type="submit" value="Submit">
	</form>
	<hr>
	<h1>This example is using variables!</h1>
		<form action="add-person2" method="post" onsubmit="return validateInfo();" >
		First Name: <input id="firstname" type="text" name="first" >
		Last Name: <input id="lastname" type="text" name="last">
		Age: <input type="number" name="age">
		<input class="btn-primary" type="submit" value="Submit">
	</form>
	
		<hr>
	<h1>This example is using an object!</h1>
		<form action="add-person3"  >
		First Name: <input type="text" name="firstName">
		Last Name: <input type="text" name="lastName">
		Age: <input type="number" name="age">
		<input class="btn-primary" type="submit" value="Submit">
	</form>
	</div>
	
	<script>
	
	/* 
	 * always test with a console.log() to make sure the js or js file is connected right!
	 * 
	 */ 
	console.log("Hello world!");
	// this isvalidating the second form above using ids to target the elements
	function validateInfo() {
		// 1. get the textbox value
		var first = document.getElementById("firstname").value;
		var last = document.getElementById("lastname").value;
		
		if (first.length <= 2) {
			alert("Please enter a longer first name!");
			document.getElementById("firstname").focus();
			return false;
		} else if (last.length <= 2) {
			alert("Please enter a longer last name!");
			document.getElementById("lastname").focus();
			return false;
		}
	}
	
	</script>
</body>
</html>