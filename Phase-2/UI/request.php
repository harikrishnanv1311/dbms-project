<html>
<head>
	<title>PES University|Timetable Management System</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">

</head>

<body>
		<nav class="navbar navbar-default navbar-light bg-light shadow">
			<a href="index.php"><img src="pes_logo.png" class="img-fluid"></a>
			<a class="navbar-brand ml-auto text-secondary" href="index.php"><h3>TIMETABLE MANAGEMENT</h3></a>
        </nav>
	<div class="container">
		
			<?php
				
				//echo '<h1 class="pt-5">';
				
				if(isset($_POST["initials"]))
				{
					$initials = strtoupper($_POST["initials"]);
					
					if (strpos($initials, "DR") !== false)
					{
						$str_arr = explode('.', $initials);
						$str_arr[0] = "Dr";
						$initials = implode(".", $str_arr);
					}
				}

				if(isset($_POST["date"]))
				{
					$date = strtotime($_POST["date"]);
					$day = date("l", $date);
				}
				
				//echo '</h1><br>';
				//Need to enter database name, username and password
				
				$db_connection = pg_connect("host='localhost' port='5432' dbname='' user='' password=''") or die("unable to connect to database");				
				
				function print_timetable($result)
				{	
					if (pg_num_rows($result) > 0)
					{
						echo '<table class="table table-hover table-responsive table-striped">
								<thead>
									<tr>';
						
						$i = 0;
						
						while ($i < pg_num_fields($result))
						{
							$fieldName = pg_field_name($result, $i);
							echo '<th style="text-align:center">' . strtoupper($fieldName) . '</th>';
							$i = $i + 1;
						}
						echo '</tr></thead><tbody>';
						
						$i = 0;
						
						while ($row = pg_fetch_row($result)) 
						{
							echo '<tr>';
							$count = count($row);
							$y = 0;
							while ($y < $count)
							{
								$c_row = current($row);
								echo '<td style="text-align:center">' . $c_row . '</td>';
								next($row);
								$y = $y + 1;
							}
							echo '</tr>';
							$i = $i + 1;
						}
						
						pg_free_result($result);
						
						echo '</tbody></table>';
					}
					else
					{
						echo "<h2 class='jumbotron text-center'>No classes</h2>";
					}
				}

				if (isset($_POST["timetable"]))
				{
					echo "<h1 class='pt-5'>".$initials."'s Timetable for the Week</h1>";
					$query = "SELECT sem as SEM, section as SECTION, room_no as ROOM_NO, pno as PERIOD,day as DAY, start_time as START_TIME, end_time as END_TIME FROM assign_to WHERE initials = '$initials'";
					$result = pg_query($query);
					print_timetable($result);
				}

				elseif (isset($_POST["free_slots"]))
				
				{
					echo "<h1 class='pt-5'>".$initials."'s Free Slots</h1>";
					$query = "SELECT * from timetable where (pno,day) NOT IN (SELECT pno, day FROM assign_to WHERE initials='$initials');";
					$result = pg_query($query);
					print_timetable($result);
					
				}

				elseif (isset($_POST["time_date"])) 
				{
					echo "<h1 class='pt-5'>".$initials."'s Timetable</h1>";
					$query = "SELECT sem as SEM, section as SECTION, room_no as ROOM_NO, pno as PERIOD, start_time as START_TIME, end_time as END_TIME FROM assign_to WHERE initials = '$initials' AND assign_to.day = '$day'";
					$result = pg_query($query);
					print_timetable($result);
				}
					
				echo '<br/>';

				pg_close($db_connection);
			
			?>
		
		<a href="index.php"><button class="btn btn-primary">Go Back</button></a>
		<footer class="footer">
			<p><center>Copyright &COPY; PES University. All Rights Reserved | Contact Us: +91 90000 00000</center></p>
		</footer>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	
	</div>
</body>
</html>