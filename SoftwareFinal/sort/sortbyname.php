<?php
require_once('../database.php');
try {
    $userid = $_REQUEST['UserID'];
    $query = $connection->query("SELECT task_id,user_id,task_name,task_priority,task_color,task_description,task_attendees,task_date FROM tasks WHERE user_id = $userid  ORDER BY task_name");

    $array =[];


    while ($row = $query->fetch_assoc())
    {

        array_push($array,$row);
    }
}
catch (PDOException $e) {
    echo "cannot connect to database";
}
echo json_encode($array);
?>
