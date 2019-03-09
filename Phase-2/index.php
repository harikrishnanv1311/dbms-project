<!DOCTYPE html>
<html>
<head>
	<title>PES University|Timetable management system</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
    <!--jQuery library--> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!--Latest compiled and minified JavaScript--> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
		<header>
		<div class="container">
		<nav class="navbar navbar-default navbar-fixed-top">  
            <div class="container">
                <div class="navbar-header">
					<a href="#"><img src="pes_logo.png" class="pull-left col-sm-4"></a>
                    <a href="#" class="navbar-brand col-sm-8" align="right">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Time Table Management</a>
                </div>
            </div>
        </nav>
		</div>
		</header>
		<footer>
		<div class="container gap">
			<form class="form-horizontal" action="request.php" method="POST">
				<div class="form-group">
					<label class="control-label col-sm-2" for="initials">Faculty Initials: </label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="initials" placeholder="Enter Initials">
						</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="date">Date: </label>
					<div class="col-sm-10"> 
						<input type="date" class="form-control" name="date" placeholder="Select the Date">
					</div>
				</div>
 
			    <div class="form-group"> 
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>
			    </div>
			</form>
		</div>
		</footer>
		
</body>
</html>