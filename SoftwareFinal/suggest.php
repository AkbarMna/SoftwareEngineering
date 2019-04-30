<?php
require_once('authenticate.php');
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
		
		form#add-new-task label{
			width: 80px;
			display: inline-block;
			margin-right: 10px;
		}
		form#add-new-task input{
			width: 150px;
			margin-right: 10px;
		}

		form#add-new-task :required {
			border-color: #11b8ff;
			-webkit-box-shadow: 0 0 5px rgba(17, 184, 255, .75);
			-moz-box-shadow: 0 0 5px rgba(17, 184, 255, .75);
			-o-box-shadow: 0 0 5px rgba(17, 184, 255, .75);
			-ms-box-shadow: 0 0 5px rgba(17, 184, 255, .75);
			box-shadow: 0 0 5px rgba(17, 184, 255, .75);
		}
		
		table {
            width: 100%;
        }
        
        table, tr, td, thead, tfoot, colgroup, col, caption {
            margin: 0px;
            border-spacing: 0px;
        }
        
        table {
            border: 1px solid #333333;
        }
        
        table thead tr {
            background-color: #ffffff;
        }
        
        table tbody tr td:last-child, table thead tr th:last-child, table tfoot tr th:last-child {
            text-align: right;
        }
        
        table tfoot tr th:first-child {
            text-align: left;
            background-color: #ffffff;
            border-right: 1px solid #333333;
        }
        
        table tbody tr td, table tbody tr th, table thead tr th, table thead tr td {
            border-bottom: 1px solid #333333;
            border-top: 0px;
            border-left: 0px;
            border-right: 1px solid #333333;
        }
        
        table tbody tr td:last-child, table tbody tr th:last-child, table thead tr th:last-child {
            border-right: 0px;
        }
        
        table colgroup col:first-child {
            background-color: #e3edf8;
        }
    
        table thead tr th, table tbody tr td {
            padding: 4px 7px 2px;
        }
        
        table tbody tr:nth-child(even){
            background-color: #ececec;
        }
        
        table tbody tr:nth-child(od){
            background-color: #ffffff;
        }
	
         body {font-family: Arial, Helvetica, sans-serif;}

        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }

        /* Modal Content */
        .modal-content {
            background-color: #fefefe;
            margin: auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
        }

        ul {
          list-style-type: none;
          margin: 0;
          padding: 0;
          overflow: hidden;
          background-color: #333;
        }
        
        li {
          float: left;
        }
        
        li a {
          display: block;
          color: white;
          text-align: center;
          padding: 14px 16px;
          text-decoration: none;
        }
        
        li a:hover {
          background-color: #111;
        }
    </style>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
</head>

<body>
<script type="text/javascript">
</script>
<!-- Header -->
<header class="w3-theme-l3 w3-center" id="myHeader">
    <div class=" w3-container w3-center">
      <h1 class="w3-xxxlarge w3-animate-bottom">DeStress</h1>
      <span class='countdown' value='2019/04/29 12:00:00'></span>
    </div>
        <ul>
          <li><a href="index.php">Home</a></li>
          <li><a href="history.php">History</a></li>
          <li><a class="active" href="#Schedule">Schedule</a></li>
        </ul>
</header>

<div class="w3-row-padding w3-center w3-margin-top w3-margin-bottom" id="page">
    <!-- [content] -->
    <section id="content">
        <!-- [to-do] -->
        <article id="to-do">
        	<section class="w3-container w3-theme-l3 w3-padding w3-center w3-row-padding" id="display">
        		<div class = 'w3-center' id ='table'>
        		    <h1> Schedule </h1>
                	<table id="to-do-list">
                		<colgroup>
                			<col />
                			<col />
                			<col />
                			<col />
                			<col />
                			<col />
                		</colgroup>
                			<thead>
                				<tr>
                    				<th scope="col"></th>
                    				<th scope="col">Name</th>
                    				<th scope="col">Description</th>
                    				<th scope="col">Date</th>
                				</tr>
                			</thead>
                			<tbody>			
                                <?php
                                global $user_id;
                                $query = $connection->prepare("SELECT `task_id`, `task_name`, `task_priority`, `task_color`, `task_description`, `task_attendees`, `task_date` FROM `tasks` WHERE `user_id` = ? ORDER BY rand()");
                                $query->bind_param("i", $user_id);
                                $query->execute();
                                    
                                $query->bind_result($id, $name, $priority, $color, $description, $attendees, $date);
                                while ($query->fetch()) {
                                    echo '<div id="records"><tr id="task-' . $id . '">
                                    <th scope="row" style="background-color:' . $color . '">
                                    
                                    </th>
                                    <td>' . $name . '</td>
                                    <td>' . $description . '</td>
                                    <td>' . $date . '</td>';
                                    }
                                    
                                    $query->close();
                                    ?>					
                	       </tbody>
                    </table>
                </div>
        	</section>
        		<footer>
        		</footer>
        </article>
        <!-- [/to-do] -->		
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

