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
	<script type="text/javascript">
	function ConvertFormToJSON(form){
			var array = jQuery(form).serializeArray();
			var json = {};
			
			jQuery.each(array, function() {
				json[this.name] = this.value || '';
			});
			
			return json;
		}
		
		jQuery(document).on('ready', function() {
			jQuery('form#add-new-task').bind('submit', function(event){
				event.preventDefault();
				
				var form = this;
				var json = ConvertFormToJSON(form);
				var tbody = jQuery('#to-do-list > tbody');

				$.ajax({
					type: "POST",
					url: "submit.php",
					data: json,
					dataType: "json"
				}).success(function(state) { 
					if(state.success === true) {
						tbody.append('<tr><th scope="row" style="background-color:' + state['color'] + 
							'"><input type="checkbox" /></th><td>' + state['date'] +
							'</td><td>' + state['priority'] + '</td><td>' + state['name'] + 
							'</td><td>' + state['desc'] + '</td><td>' + state['email'] + '</td></tr>');	
					} else {
						alert(state.error.join());
					}
				}).fail(function(state) { 
					alert("Failed to add to-do"); 
				});

				return true;
			});
			

			var $getuserid = "<?php global $user_id; echo $user_id; ?>";

			console.log($getuserid);
		});
	</script>	
</head>
<body>
<!-- Header -->
<header class="w3-theme-l3 w3-center" id="myHeader">
    <div class=" w3-container w3-center">
      <h1 class="w3-xxxlarge w3-animate-bottom">DeStress</h1>
      <span class='countdown' value='2019/04/29 12:00:00'></span>
    </div>
        <ul>
          <li><a href="index.php">Home</a></li>
          <li><a class="active" href="#History">History</a></li>
          <li><a href="suggest.php">Schedule</a></li>
        </ul>
</header>

<div class="w3-row-padding w3-center w3-margin-top w3-margin-bottom" id="page">
    <!-- [content] -->
    <section id="content">
        <!-- [to-do] -->
        <article id="to-do">
        	<section class="w3-container w3-theme-l3 w3-padding w3-center w3-row-padding" id="display">
        		<div class = 'w3-center' id ='table'>
        		    <h1> Completed Tasks </h1>
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
                    				<th scope="col">Date</th>
                    				<th scope="col">Priority</th>							
                    				<th scope="col">Name</th>
                    				<th scope="col">Description</th>
                    				<th scope="col">Invitees</th>
                    				<th scope="col">Function</th>
                				</tr>
                			</thead>
                			<tbody>			
                                <?php
                                global $user_id;
                                $query = $connection->prepare("SELECT `task_id`, `task_name`, `task_priority`, `task_color`, `task_description`, `task_attendees`, `task_date` FROM `deletedtasks` WHERE `user_id` = ?");
                                $query->bind_param("i", $user_id);
                                $query->execute();
                                    
                                $query->bind_result($id, $name, $priority, $color, $description, $attendees, $date);
                                while ($query->fetch()) {
                                    echo '<div id="records"><tr id="task-' . $id . '">
                                    <th scope="row" style="background-color:' . $color . '">
                                    
                                    </th><td>' . $date . '</td>
                                    <td>' . $priority . '</td>
                                    <td>' . $name . '</td>
                                    <td>' . $description . '</td>
                                    <td>' . $attendees . '</td>';
                                    
                                    //for delete
                                    echo"<form action='deletion2.php' method='post'>";
	                               	echo"<td><input type='submit' value='DELETE' name='submit' >";
                                    echo"<input type='hidden' name='taskid' value='$id'></form>";
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

