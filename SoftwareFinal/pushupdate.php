<?php
require_once('database.php');
try {
    $taskid = $_REQUEST['UpdateID'];

    $taskname = $_REQUEST['UpdateName'];
    $taskpriority = $_REQUEST['UpdatePriority'];
    $taskdate = $_REQUEST['UpdateDate'];
    $taskcolor = $_REQUEST['UpdateColor'];
    $taskdescription = $_REQUEST['UpdateDescription'];
    $taskattendees = $_REQUEST['UpdateAttendees'];

    $sql = "UPDATE tasks SET task_name='$taskname',task_priority='$taskpriority', task_color = '$taskcolor', task_description = '$taskdescription', task_attendees = '$taskattendees', task_date = '$taskdate' WHERE task_id='$taskid'";
    $result = $connection->query($sql);



    if($result == true){


    }

    var_dump($sql);

}
//}
catch (Exception $e) {
    echo "cannot connect to database";
}

?>
