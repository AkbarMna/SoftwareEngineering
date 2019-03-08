<?php
session_start();
if (isset($_POST["submit"])) {
    include_once 'DBconnect.php';
    
    $email = $_POST['email'];
    $password = md5($_POST['password']);
    
    $database = new dbConnect();
    
    $db = $database->openConnection();
    
    $sql = "select * from user where username = '$username' and password= '$password'";
    $user = $db->query($sql);
    $result = $user->fetchAll(PDO::FETCH_ASSOC);
    
    $id = $result[0]['id'];
    $name = $result[0]['username'];
    $email = $result[0]['email'];
    $_SESSION['username'] = $name;
    $_SESSION['id'] = $id;
    
    $database->closeConnection();
    header('location: main.php');
}
?>

<html lang="en">
<head>
<title>Destress</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/timer.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">

<script>
    function loginvalidation(){
        var username = document.getElementById('username').value;
        var password = document.getElementById('password').value;

        var valid = true;

        if(username == ""){
        	   valid = false;
            document.getElementById('user_error').innerHTML = "required.";
        }

        if(password == ""){
        	   valid = false;
            document.getElementById('password_error').innerHTML = "required.";
        }
        return valid;
    }
</script>
</head>
<body>

    <!-- Header -->
<header class="w3-container w3-theme w3-padding w3-center" id="myHeader">
  <div class="w3-center">
    <div class="w3-third"> 
      <br>
    </div>
    <div class="w3-third">
      <h1 class="w3-xxxlarge w3-animate-bottom">DeStress</h1>
      <h5>Breathe.</h5>
    </div>
    <div class="w3-third"> 
      <br>
      <br>
      <button class="w3-button w3-round-xlarge w3-red">Add Reminder</button>
    </div>
  </div>
</header>

    <div class="demo-content">
        <form action="" method="POST"
            onsubmit="return loginvalidation();">


            <div class="row">
                <label>Username</label> <span id="user_error"></span>
                <div>
                    <input type="text" name="username" id="username"
                        class="form-control"
                        placeholder="Enter your Username">
                </div>
            </div>

            <div class="row">
                <label>Password</label><span id="password_error"></span>
                <div>
                    <input type="Password" name="password" id="password"
                        class="form-control"
                        placeholder="Enter your password">

                </div>
            </div>
            <div class="row">
                <div>
                    <button type="submit" name="submit"
                        class="btn login">Login</button>
                </div>
            </div>
            <div class="row">
                <div>
                    <a href="register.php"><button type="button"name="submit" class="btn signup">Signup</button></a>
                </div>
            </div>
        </form>
    </div>

    <!-- Footer -->
<footer class="w3-container w3-theme-dark w3-padding-16">
  <h3>Footer</h3>
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
  <div style="position:relative;bottom:55px;" class="w3-tooltip w3-right">
    <span class="w3-text w3-theme-light w3-padding">Go To Top</span>    
    <a class="w3-text-white" href="#myHeader"><span class="w3-xlarge">
    <i class="fa fa-chevron-circle-up"></i></span></a>
    </div>
</footer>

</body>
</html>