<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
    <!--jQuery library--> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!--Latest compiled and minified JavaScript--> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<div class="container">
	<h3>Yo boi, 
		"<?php if(isset($_POST["initials"])){echo strtoupper($_POST["initials"]);}?>" wants to know the time table information of 
		"<?php if(isset($_POST["date"])){echo $_POST["date"];} ?>" 
	</h3>
<a href="index.php"><button class="btn btn-primary">Go Back</button></a>
</div>
</body>
</html>