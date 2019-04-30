<?php
if(!empty($_POST["users"])) {
	/* Form Required Field Validation */
	foreach($_POST as $key=>$value) {
		if(empty($_POST[$key])) {
		$error_message = "All Fields are required";
		break;
		}
	}
	/* Password Matching Validation */
	if($_POST['user_password'] != $_POST['confirm_password']){ 
	$error_message = 'Passwords should be same<br>'; 
	}

	/* Email Validation */
	if(!isset($error_message)) {
		if (!filter_var($_POST["user_email"], FILTER_VALIDATE_EMAIL)) {
		$error_message = "Invalid Email Address";
		}
	}

	if(!isset($error_message)) {
		require_once("config.php");
		$db_handle = new DBController();
		$query = "INSERT INTO users (user_login, user_password, user_firstname, user_surname, user_email) VALUES
		('" . $_POST["user_login"] . "', '" . md5($_POST["user_password"]) . "','" . $_POST["user_firstname"] . "', '" . $_POST["user_surname"] . "', '" . $_POST["user_email"] . "')";
		$result = $db_handle->insertQuery($query);
		if(!empty($result)) {
			$error_message = "";
			$success_message = "You have registered successfully!";	
			unset($_POST);
		} else {
			$error_message = "Problem in registration. Try Again!";	
		}
	}
}
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
		.error-message {
    	padding: 7px 10px;
    	background: #fff1f2;
    	border: #ffd5da 1px solid;
    	color: #d6001c;
    	border-radius: 4px;
        }
        .success-message {
        	padding: 7px 10px;
        	background: #cae0c4;
        	border: #c3d0b5 1px solid;
        	color: #027506;
        	border-radius: 4px;
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
			<h1>Register</h1>
		</hgroup>		
	</header>
	<!-- [content] -->
    <section id="content">
        <form  class="w3-row-padding w3-center w3-margin-top w3-padding-16" name="frmRegistration" method="post" action="">
            <div class="w3-container w3-theme-l3 w3-padding w3-center"> 
                <table border="0" width="500" align="center" class="demo-table">
                <?php if(!empty($success_message)) { ?>	
                <div class="success-message"><?php if(isset($success_message)) echo $success_message; ?></div>
                <?php } ?>
                <?php if(!empty($error_message)) { ?>	
                <div class="error-message"><?php if(isset($error_message)) echo $error_message; ?></div>
                <?php } ?>    
                <tr>
                <td>First Name</td>
                <td><input type="text" class="demoInputBox" name="user_firstname" value="<?php if(isset($_POST['user_firstname'])) echo $_POST['user_firstname']; ?>" required></td>
                </tr>
                <tr>
                <td>Surname</td>
                <td><input type="text" class="demoInputBox" name="user_surname" value="<?php if(isset($_POST['user_surname'])) echo $_POST['user_surname']; ?>" required></td>
                </tr>
                <tr>
                <td>User Name</td>
                <td><input type="text" class="demoInputBox" name="user_login" value="<?php if(isset($_POST['user_login'])) echo $_POST['user_login']; ?>" required></td>
                </tr>
                <td>Password</td>
                <td><input type="password" class="demoInputBox" name="user_password" value="" required></td>
                </tr>
                <tr>
                <td>Confirm Password</td>
                <td><input type="password" class="demoInputBox" name="confirm_password" value="" required></td>
                </tr>
                <tr>
                <td>Email</td>
                <td><input type="text" class="demoInputBox" name="user_email" value="<?php if(isset($_POST['user_email'])) echo $_POST['user_email']; ?>" required></td>
                </tr>
                <tr>
                <td colspan=2>
                <input type="submit" name="users" value="Register" class="w3-padding w3-button w3-round-xlarge w3-red">
                <a href="login.php"><button type="button"name="submit" class="w3-padding w3-button w3-round-xlarge w3-red">Login</button></a>
                </td>
                </tr>
                </table>
            </div>
        </form>
    </section>
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