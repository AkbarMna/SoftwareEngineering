<!DOCTYPE html>
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


<div class="w3-row-padding w3-center w3-margin-top w3-padding-16" id ='main'>

        <div class="w3-third">
          <div class="w3-card w3-container" id ='side1'></div>
        </div>
        
        <div class="w3-third">
          <div class="w3-card w3-container" id ='side2'></div>
        </div>
        
        <div class="w3-third">
          <div class="w3-card w3-container" id ='side3'></div>
        </div>
   
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


<script src="js/script.js"></script>
<script>
	var spreadsheetUrl = 'https://spreadsheets.google.com/feeds/cells/1LQe5t4by7qoevPP0OgKP3HSwgK6ODKJVAUhmCEf2qbA/1/public/values?alt=json-in-script&callback=doData';
</script>
<script src="js/timer.js"></script>
</body>
</html>