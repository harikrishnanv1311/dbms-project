<!DOCTYPE html>
<html>
<head>
	<title>PES University|Timetable Management System</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<style>
		.gap{
			margin:100px;
			border:100px;
			padding:100px;
			display:inline-block;
		}
			
	</style>
</head>
<body>
		<nav class="navbar navbar-default navbar-light bg-light shadow">
			<a href="index.php"><img src="pes_logo.png" class="img-fluid"></a>
			<a class="navbar-brand ml-auto text-secondary pull-left" href="index.php"><h3>TIMETABLE MANAGEMENT</h3></a>
        </nav>

		<div class="container pt-5">
			<form action="request.php" method="POST">
				<div class="form-group">
					<label for="initials"><strong>Faculty Initials:</strong></label>
					<input type="text" class="form-control" name="initials" placeholder="Enter Initials" required>
				</div>
				<div class="form-group">
					<label for="date"><strong>Date:</strong></label>
					<input type="date" class="form-control" name="date" id="date" placeholder="Select the Date" required>
				</div>
					<button type="submit" class="btn btn-primary" name="time_date">Particular Timetable</button>
					<button type="submit" class="btn btn-primary" name="timetable">Full Timetable</button>
					<button type="submit" class="btn btn-primary" name="free_slots">Free slots</button>
			</form>
		</div>
		
		<footer class="footer fixed-bottom">
			<p><center>Copyright &COPY; PES University. All Rights Reserved | Contact Us: +91 90000 00000</center></p>
		</footer>
		
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>