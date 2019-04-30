<?php
require_once('database.php');
try {
        $Update = $_REQUEST['UpdateID'];
        //$Update = '51';
//query
        $query = $connection->query("SELECT task_id,user_id,task_name,task_priority,task_color,task_description,task_attendees,task_date FROM tasks WHERE task_id = '$Update'");
        //$stmt = $pdo->query("SELECT customerNumber,customerName,contactLastName,contactFirstName,phone,addressLine1,addressLine2,city,state,postalCode,country,salesRepEmployeeNumber,creditLimit FROM customers WHERE customerName LIKE '%$CustomerName%'");
//Query execution
        $array = [];
       // $query->execute();
       // $query->bind_result($id, $name, $priority, $color, $description, $attendees, $date);
        //while ($row = $query->fetch(FETCH_ASSOC)) {
    while ($row = $query->fetch_assoc()) {
        //print_r ($);
        array_push($array, $row);
    }
    }
//}
catch (PDOException $e) {
    echo "cannot connect to database";
}
echo json_encode($array);

//print_r ($array);
?>
