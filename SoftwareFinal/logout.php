<?php

session_start();
session_regenerate_id(true); 
header("Location: login.php");

?>