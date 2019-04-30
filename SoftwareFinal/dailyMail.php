<?php

    require_once('database.php');
    
    $query = $connection->prepare("
    SELECT `task_id`, `user_firstname`, `user_surname`, `user_email`, `task_name`, `task_priority`, `task_color`, `task_description`, `task_attendees`, `task_date` FROM `tasks` AS t INNER JOIN `users` AS u ON u.user_id = t.user_id");
    $query->execute();

    $query->bind_result($id, $firstname, $surname, $email, $name, $priority, $color, $description, $attendees, $date);

    while ($query->fetch()) {
	    //$to = "$attendees";

    	$to = $attendees;
        $subject = "To Do App";
        $headers = "MIME-Version: 1.0"."\r\n";
        $headers .= "Content-type: text/html;charset=UTF-8"."r\n";
        $headers .= 'From: <NoReply_ToooDooo@lutee.org>' . "\r\n";
        
    
        $message = "
        <html>
        <head>
        <title> Cron job </title>
        </head>
        <body>
        <p>Upcoming priority $priority task - $name</p>
        <p>Don't forget $name is at $date! <br/> $description </p>
		</p>
        </body>
        </html>
        ";
        
        mail($to, $subject, $message, $headers);
    }
    
    $query->close();
    
?>