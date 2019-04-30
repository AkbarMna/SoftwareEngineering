<?php

$con=mysqli_connect("localhost", "root", "", "todo");
// Check connection to database

if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

// Attempt Delete query
$taskid = mysqli_real_escape_string($con, $_POST['taskid']);
$taskuserid = mysqli_real_escape_string($con, $_POST['taskuserid']);
$taskname = mysqli_real_escape_string($con, $_POST['taskname']);
$taskpriority = mysqli_real_escape_string($con, $_POST['taskpriority']);
$taskcolor = $_POST['taskcolor'];
$taskdescription = mysqli_real_escape_string($con, $_POST['taskdescription']);
$taskattendees = mysqli_real_escape_string($con, $_POST['taskattendees']);
$taskdate = mysqli_real_escape_string($con, $_POST['taskdate']);

$sql=  "DELETE FROM deletedtasks WHERE task_id = '$taskid'";


if (!mysqli_query($con,$sql)) {
  die('Error: ' . mysqli_error($con));
}

if(mysqli_query($con, $sql)){
    
    		echo "<script type=\"text/javascript\">
						alert(\"Reminder succesfully deleted, redirecting back to previous page\");
						window.location = \"history.php\" 
					</script>";  
}



mysqli_close($con);
?>