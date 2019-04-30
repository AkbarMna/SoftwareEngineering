<?php
$username = null;
$password = null;

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
	
	require_once('database.php');
	
	if(!empty($_POST["username"]) && !empty($_POST["password"])) {
		$username = $_POST["username"];
		$password = $_POST["password"];
	
		$query = $connection->prepare("SELECT `user_id` FROM `users` WHERE `user_login` = ? and `user_password` = md5(?)");
		$query->bind_param("ss", $username, $password);
		$query->execute();
		$query->bind_result($userid);
		$query->fetch();
		$query->close();
		
		if(!empty($userid)) {
			session_start();
			$session_key = session_id();
			
			$query = $connection->prepare("INSERT INTO `sessions` ( `user_id`, `session_key`, `session_address`, `session_useragent`, `session_expires`) VALUES ( ?, ?, ?, ?, DATE_ADD(NOW(),INTERVAL 1 HOUR) );");
			$query->bind_param("isss", $userid, $session_key, $_SERVER['REMOTE_ADDR'], $_SERVER['HTTP_USER_AGENT'] );
			$query->execute();
			$query->close();
			
			header('Location: index.php');
		}
		else {
		    
			header('Location: login.php');
		}
		
	} else {
		header('Location: login.php');
	}
} else {
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <title>Breathe App - Destress</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/timer.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-dark-grey.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">
    <style type="text/css">
		body {
			color: #000000;
			font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;	
		}
	</style>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
</head>

<body>

<!-- Header -->
<header class="w3-theme-l3 w3-center" id="myHeader">
    <div class=" w3-container w3-center">
      <h1 class="w3-xxxlarge w3-animate-bottom">DeStress</h1>
      <span class='countdown' value='2019/04/29 12:00:00'></span>
    </div>
</header>

<div class="w3-row-padding w3-center w3-margin-top w3-padding-16" id="page">
	<!-- [banner] -->
	<header id="banner">
		<hgroup>
			<h1>Login</h1>
		</hgroup>		
	</header>
	<!-- [content] -->
	<section id="content">
		<form class="w3-row-padding w3-center w3-margin-top w3-padding-16" id="login" method="post">
			<div class="w3-container w3-theme-l3 w3-padding w3-center">
    	        <table border="0" width="500" align="center" class="demo-table">
                <?php if(!empty($success_message)) { ?>	
                <div class="success-message"><?php if(isset($success_message)) echo $success_message; ?></div>
                <?php } ?>
                <?php if(!empty($error_message)) { ?>	
                <div class="error-message"><?php if(isset($error_message)) echo $error_message; ?></div>
                <?php } ?>
                <tr>
                <td>User Name</td>
                <td><input id="username" name="username" type="text" required></td>
                </tr>
                <td>Password</td>
                <td><input id="password" name="password" type="password" required></td>
                </tr>
                <tr>
                <td colspan=2>
                <a href="register.php"><button type="button"name="submit" class="w3-padding w3-button w3-round-xlarge w3-red">Register</button></a>
                <input class="w3-padding w3-button w3-round-xlarge w3-red" type="submit" value="Login">
                </td>
                </tr>
                </table>
            </div>
		</form>
	</section>
	<!-- [/content] -->
</div>

<!-- Footer -->
<footer class="w3-container w3-theme-l3" id="footer">
  <h3>DeStress</h3>
  <div style="position:relative;bottom:55px;" class="w3-tooltip w3-right">
    <span class="w3-text w3-theme-l3">Go To Top</span>    
    <a class="w3-text-white" href="#myHeader"><span class="w3-xlarge">
    <i class="fa fa-chevron-circle-up"></i></span></a>
    </div>
</footer>

</body>
</html>
<?php } ?>