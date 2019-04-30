<?php
require_once('authenticate.php');

global $user_id;
$query = $connection->prepare("SELECT `task_id`, `task_name`, `task_priority`, `task_color`, `task_description`, `task_attendees`, `task_date` FROM `tasks` WHERE `user_id` = ?  ORDER BY `task_date`");
$query->bind_param("i", $user_id);
$query->execute();

$query->bind_result($id, $name, $priority, $color, $description, $attendees, $date);
while ($query->fetch())
{

    echo "<div class='w3-half'>";
    echo "<div class='w3-container' style='text-align: left'>";
    echo "<div class='w3-row-padding w3-center w3-margin-top' id='task-" . $id . "' style= 'background-color:" . $color ."'>";
    echo "<div id=times>";
    echo "<h3>". $name . "</h3>";
    echo '<br>';
    // Declare and define two dates
    $taskdate = strtotime($date);
    $nowdate = strtotime(date("Y-m-d H:i:s"));
    
    //Formulate the Difference between two dates
    $newnow = strtotime('+1 day', $nowdate);
    $diff = abs($newnow - $taskdate);
    $new_date = date('d H:i:s', $diff); 
    $time = strtotime($new_date);
    echo $time;
    
    $Days = gmdate("d",$diff);
    $Hours = gmdate("H",$diff);
    $Mins = gmdate("i",$diff);
    $Secs = gmdate("s",$diff);
    echo "<div class='timeDisplay' id='timeDisplay'>";
    echo	"<div>";
    echo		"<div>" . $Days . " </div>";
    echo        "<div class='smalltext'> Days </div>";
    echo	"</div>	";
    echo	"<div>";
    echo		"<div>" . $Hours . "</div>";
    echo        "<div class='smalltext'> Hours </div>";
    echo		"</div>";
    echo	"<div>";
    echo		"<div>" . $Mins . "</div>";
    echo        "<div class='smalltext'> Mins </div>";
    echo	"</div>";
    echo	"<div>";
    echo		"<div>" . $Secs . "</div>";
    echo        "<div class='smalltext'> Secs </div>";
    echo	"</div>";
    echo "</div>";
    echo '<br>';
    echo "<h3>". $description . "</h3>";
    echo "</div>";
    echo "</div>";
    echo "</div>";
    echo "</div>";
    
    
}
$query->close();
?>
                