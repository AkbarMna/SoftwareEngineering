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
        h1,h2{
          color: #fff;
          text-shadow: 0px 2px rgba(0, 0, 0, 0.5);
          font-weight: normal;
        }
        
        h3{
          color: #fff;
          text-shadow: 0px 2px rgba(0, 0, 0, 0.5);
          font-weight: normal;
          position: relative;
        }
    
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
            background-color: #d3edf8;
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

        /* The Close Button */
        .close {
            color: #aaaaaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: #000;
            text-decoration: none;
            cursor: pointer;
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
<script type="text/javascript">
    $(function(){
        //$("#Updation").click(function(){
        $('.Updation').on('click', function(){
            $('#popout').empty();
            //Assigning search box value to javascript variable named as "name".
            var $id = $(this).val();
            // var name = $id.val();
            console.log($id);

            //$con=mysqli_connect(localhost, DB_USER, DB_PASS, DB_NAME);
            //Validating, if "name" is empty.
            //AJAX is called.
            $.ajax({

                //AJAX type is "Post".
                type: "POST",
                //Data will be sent to "ajax.php".
                url: "getUpdateReminder.php",
                //Data, that will be sent to "ajax.php".
                data: {
                    //Assigning value of "name" into "search" variable.
                    UpdateID: $id
                },
                //If result found, this funtion will be called.
                success: function(html) {

                    var json = $.parseJSON(html);
                    var string =
                        "<table width = '100%'>" +
                        "<tr align='center'>UPDATE REMINDER INFORMATION</tr>";

                    $.each(json,function (index,item) {

                        string +=
                            "<tr align='left'><td>TASK DATE: <input type='text' name='taskdate' id='taskdate'value='" + item['task_date'] + "'></td>" +
                            //"<tr><td><input type='datetime-local' name='taskdate' value='" + item['task_date'] + "'></td>" +
                            "<td align='left'>TASK PRIORITY: <input type='text' name='taskpriority' id='taskpriority' value='" + item['task_priority'] + "'></td></tr>" +
                            "<tr align='left'><td>TASK NAME: <input type='text' name='taskname' id='taskname' value='"     + item['task_name']     + "'></td>" +
                            "<td>TASK DESCRIPTION: <input type='text' name='taskdescription' id='taskdescription' value='" + item['task_description'] + "'></td></tr>" +
                            "<tr align='left'><td>TASK COLOR: <input type='color'name='taskcolor' id='taskcolor' value='" + item['task_color'] + "'></td>" +
                            "<td>TASK REMIND AT: <input type='text' name='taskattendees' id='taskattendees' value='" + item['task_attendees'] + "'></td></tr>" +
                            "<tr><td align='center'><button class='ConfirmUpdate' name='confirmup' id='confirmup' value='" + item['task_id'] + "'>Implement Updates</button></td></tr>"

                    });
                    string += "</table>";

                    $("#popout").html(string).show();
                }
            });

            //$("#records").on("click","#example button",function(){
            console.log('test');
            var modal = document.getElementById('myModal');
            var span = document.getElementsByClassName("close")[0];
            modal.style.display = "block";
            span.onclick = function() {
                modal.style.display = "none";
            }

            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function(event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }};
        });

        $("#popout").on('click','button', function () {
            //var $confirm = $("popout").find('#ConfirmUpdate').val();
            var $confirmid = $('.ConfirmUpdate','#popout').val();
            var $confirmtaskname = $("#taskname").val();
            var $confirmtaskdate = $("#taskdate").val();
            var $confirmtaskpriority = $("#taskpriority").val();
            var $confirmtaskdescription = $("#taskdescription").val();
            var $confirmtaskcolor = $("#taskcolor").val();
            var $confirmtaskattendees = $("#taskattendees").val();

            console.log($confirmid);
            console.log($confirmtaskattendees);
            console.log($confirmtaskcolor);
            console.log($confirmtaskname);
            console.log($confirmtaskdate);
            console.log($confirmtaskpriority);
            console.log($confirmtaskdescription);

            $.ajax({
                type: "POST",
                url: "pushupdate.php",
                data: {
                    UpdateID: $confirmid,
                    UpdateName: $confirmtaskname,
                    UpdateDate: $confirmtaskdate,
                    UpdatePriority: $confirmtaskpriority,
                    UpdateDescription: $confirmtaskdescription,
                    UpdateColor: $confirmtaskcolor,
                    UpdateAttendees: $confirmtaskattendees,
                },
                success: function(html) {
                    var modal = document.getElementById('myModal');
                    modal.style.display = "none";
                }
            });

        });
    });

</script>
<script type="text/javascript">
        $(function() {

            $(document).ready(function () {
                $('body').on('click','.sortbypriority',function(){
                //$('.sortbypriority').on('click', function () {
                    var $userid = "<?php global $user_id; echo $user_id;?>";


                    $.ajax({
                        //AJAX type is "Post".
                        type: "POST",
                        //Data will be sent to "ajax.php".
                        url: "sort/sortbypriority.php",
                        //Data, that will be sent to "ajax.php".
                        data: {
                            //Assigning value of "name" into "search" variable.
                            UserID: $userid
                        },
                    }).done(function (response) {
                        var json = $.parseJSON(response);
                        var string =
                                     "<table id='to-do-list'>" +
                                     "<colgroup>" +
                                     "<col />" +
                                     "<col />" +
                                     "<col />" +
                                     "<col />" +
                                     "<col />" +
                                     "<col />" +
                                     "</colgroup>" +
                                     "<thead>" +
                                     "<tr>" +
                                     "<th scope='col'></th>" +
                                     "<th scope='col'>Date <br><input type='image' class='sortbydate' id='bydate' name='bydate' src='png-arrow2.png' width='20' height='20' alt='sort' /></th>" +
                                     "<th scope='col'>Priority <br><input type='image' class='sortbypriority' id='bypriority' name='bypriority' src='png-arrow2.png' width='20' height='20' alt='sort' /></th>"  +
                                     "<th scope='col'>Name <br><input type='image' class='sortbyname' id='byname' name='byname' src='png-arrow2.png' width='20' height='20' alt='sort' /></th>" +
                                     "<th scope='col'>Description</th>" +
                                     "<th scope='col'>Remind at</th>" +
                                     "<th scope='col'>Functions</th>" +
                                     "</tr>" +
                                     "</thead>" +
                                     "<tbody>";

                        $.each(json, function (index, item) {
                            string +=
                                "<div id='records'><tr id='task- "+ item['task_id']+"'>" +
                                    "<th scope='row' style='background-color: "+ item['task_color'] + "'> </th>" +
                                    "<td>" + item['task_date'] +"</td>" +
                                    "<td>" + item['task_priority'] +"</td>" +
                                    "<td>" + item['task_name'] +"</td>" +
                                    "<td>" + item['task_description'] +"</td>" +
                                    "<td>" + item['task_attendees'] +"</td>" +
                                    //for delete
                                    "<form action='deletion.php' method='post'>" +
                                    "<td><input type='submit' value='Delete' name='submit' >" +
                                    "<input type='hidden' name='taskid' value='$id'>" +
                                    "<input type='hidden' name='taskuserid' value='$user_id'>" +
                                    "<input type='hidden' name='taskname' value='$name'>" +
                                    "<input type='hidden' name='taskpriority' value='$priority'" +
                                    "<input type='hidden' name='taskcolor' value='$color'>" +
                                    "<input type='hidden' name='taskdescription' value='$description'>" +
                                    "<input type='hidden' name='taskattendees' value='$attendees'>" +
                                    "<input type='hidden' name='taskdate' value='$date'></form>" +

                                    //for update
                                    "<button class='Updation' name='update' id='update' value='$id'>UPDATE</button>" +
                                    "<input type='hidden' class='taskid' id='taskid' name='taskid' value='$id'></form>" +
                                    "</tr></div>";
                        });
                        string += "</tbody></table>";

                        $("#table").html(string);
                    });
                });
                $('body').on('click','.sortbyname',function(){
                //$('.sortbyname').on('click', function () {
                    //  $('#to-do-list').empty();
                    var $userid = "<?php global $user_id; echo $user_id;?>";


                    $.ajax({
                        //AJAX type is "Post".
                        type: "POST",
                        //Data will be sent to "ajax.php".
                        url: "sort/sortbyname.php",
                        //Data, that will be sent to "ajax.php".
                        data: {
                            //Assigning value of "name" into "search" variable.
                            UserID: $userid
                        },
                    }).done(function (response) {
                        var json = $.parseJSON(response);
                        var string =
                            "<table id='to-do-list'>" +
                            "<colgroup>" +
                            "<col />" +
                            "<col />" +
                            "<col />" +
                            "<col />" +
                            "<col />" +
                            "<col />" +
                            "</colgroup>" +
                            "<thead>" +
                            "<tr>" +
                            "<th scope='col'></th>" +
                            "<th scope='col'>Date <br><input type='image' class='sortbydate' id='bydate' name='bydate' src='png-arrow2.png' width='20' height='20' alt='sort' /></th>" +
                            "<th scope='col'>Priority <br><input type='image' class='sortbypriority' id='bypriority' name='bypriority' src='png-arrow2.png' width='20' height='20' alt='sort' /></th>"  +
                            "<th scope='col'>Name <br><input type='image' class='sortbyname' id='byname' name='byname' src='png-arrow2.png' width='20' height='20' alt='sort' /></th>" +
                            "<th scope='col'>Description</th>" +
                            "<th scope='col'>Remind at</th>" +
                            "<th scope='col'>Functions</th>" +
                            "</tr>" +
                            "</thead>" +
                            "<tbody>";

                        $.each(json, function (index, item) {
                            string +=
                                "<div id='records'><tr id='task- "+ item['task_id']+"'>" +
                                "<th scope='row' style='background-color: "+ item['task_color'] + "'> </th>" +
                                "<td>" + item['task_date'] +"</td>" +
                                "<td>" + item['task_priority'] +"</td>" +
                                "<td>" + item['task_name'] +"</td>" +
                                "<td>" + item['task_description'] +"</td>" +
                                "<td>" + item['task_attendees'] +"</td>" +
                                //for delete
                                "<form action='deletion.php' method='post'>" +
                                "<td><input type='submit' value='Delete' name='submit' >" +
                                "<input type='hidden' name='taskid' value='$id'>" +
                                "<input type='hidden' name='taskuserid' value='$user_id'>" +
                                "<input type='hidden' name='taskname' value='$name'>" +
                                "<input type='hidden' name='taskpriority' value='$priority'" +
                                "<input type='hidden' name='taskcolor' value='$color'>" +
                                "<input type='hidden' name='taskdescription' value='$description'>" +
                                "<input type='hidden' name='taskattendees' value='$attendees'>" +
                                "<input type='hidden' name='taskdate' value='$date'></form>" +

                                //for update
                                "<button class='Updation' name='update' id='update' value='$id'>UPDATE</button>" +
                                "<input type='hidden' class='taskid' id='taskid' name='taskid' value='$id'></form>" +
                                "</tr></div>";
                        });
                        string += "</tbody></table>";

                        $("#table").html(string);
                    });
                });
                $('body').on('click','.sortbydate',function(){
                //$('.sortbydate').on('click', function () {
                    var $userid = "<?php global $user_id; echo $user_id;?>";


                    $.ajax({
                        //AJAX type is "Post".
                        type: "POST",
                        //Data will be sent to "ajax.php".
                        url: "sort/sortbydate.php",
                        //Data, that will be sent to "ajax.php".
                        data: {
                            //Assigning value of "name" into "search" variable.
                            UserID: $userid
                        },
                    }).done(function (response) {
                        var json = $.parseJSON(response);
                        var string =
                            "<table id='to-do-list'>" +
                            "<colgroup>" +
                            "<col />" +
                            "<col />" +
                            "<col />" +
                            "<col />" +
                            "<col />" +
                            "<col />" +
                            "</colgroup>" +
                            "<thead>" +
                            "<tr>" +
                            "<th scope='col'></th>" +
                            "<th scope='col'>Date <br><input type='image' class='sortbydate' id='bydate' name='bydate' src='png-arrow2.png' width='20' height='20' alt='sort' /></th>" +
                            "<th scope='col'>Priority <br><input type='image' class='sortbypriority' id='bypriority' name='bypriority' src='png-arrow2.png' width='20' height='20' alt='sort' /></th>"  +
                            "<th scope='col'>Name <br><input type='image' class='sortbyname' id='byname' name='byname' src='png-arrow2.png' width='20' height='20' alt='sort' /></th>" +
                            "<th scope='col'>Description</th>" +
                            "<th scope='col'>Remind at</th>" +
                            "<th scope='col'>Functions</th>" +
                            "</tr>" +
                            "</thead>" +
                            "<tbody>";

                        $.each(json, function (index, item) {
                            string +=
                                "<div id='records'><tr id='task- "+ item['task_id']+"'>" +
                                "<th scope='row' style='background-color: "+ item['task_color'] + "'> </th>" +
                                "<td>" + item['task_date'] +"</td>" +
                                "<td>" + item['task_priority'] +"</td>" +
                                "<td>" + item['task_name'] +"</td>" +
                                "<td>" + item['task_description'] +"</td>" +
                                "<td>" + item['task_attendees'] +"</td>" +
                                //for delete

                                "<form action='deletion.php' method='post'>" +
                                "<td><input type='submit' value='Delete' name='submit' >" +
                                "<input type='hidden' name='taskid' value='$id'>" +
                                "<input type='hidden' name='taskuserid' value='$user_id'>" +
                                "<input type='hidden' name='taskname' value='$name'>" +
                                "<input type='hidden' name='taskpriority' value='$priority'" +
                                "<input type='hidden' name='taskcolor' value='$color'>" +
                                "<input type='hidden' name='taskdescription' value='$description'>" +
                                "<input type='hidden' name='taskattendees' value='$attendees'>" +
                                "<input type='hidden' name='taskdate' value='$date'></form>" +

                                //for update
                                "<button class='Updation' name='update' id='update' value='$id'>UPDATE</button>" +
                                "<input type='hidden' class='taskid' id='taskid' name='taskid' value='$id'></form>" +
                                "</tr></div>";
                        });
                        string += "</tbody></table>";

                        $("#table").html(string);
                    });
                });
            });
        });
</script>
<script>
    function function1(){
        $(document).ready(
            setInterval(function(){
                alert("Time to take a rest!");
            }, 5000));
    }

    function function2(){
        $(document).ready(
            setInterval(function(){
                alert("Coffee time!");
            }, 3000));
    }

    $(document).ready(function(){
    function retrievethings(){
        $("#timer").load("TestingTimer.php");
    }
       // instantload();


    retrievethings();
        setInterval(function() {
            retrievethings()
        }, 1000);
    });
</script>
<!-- Header -->
<header class="w3-theme-l3 w3-center" id="myHeader">
    <div class=" w3-container w3-center">
      <h1 class="w3-xxxlarge w3-animate-bottom">DeStress</h1>
      <span class='countdown' value='2019/04/29 12:00:00'></span>
    </div>
        <ul>
          <li><a class="active" href="#Home">Home</a></li>
          <li><a href="history.php">History</a></li>
          <li><a href="suggest.php">Schedule</a></li>
        </ul>
        
        <a class="w3-padding w3-button w3-round-xlarge w3-red" href="logout.php">Logout</a>
        <input class="w3-padding w3-button w3-round-xlarge w3-red" type ="submit" onclick="function1()" value="Break Reminder">
        <input class="w3-padding w3-button w3-round-xlarge w3-red" type ="submit" onclick="function2()" value="Coffee Reminder">
</header>

<div class="w3-row-padding w3-center w3-margin-top w3-margin-bottom" id="page">
    <!-- [content] -->
    <section id="content">
        <div id="myModal" class="modal">

            <!-- Modal content -->
            <div class="modal-content">
                <span class="close">&times;</span>
                <div id='popout'>
                </div>
            </div>

        </div>
        <!-- [to-do] -->
        <article id="to-do">
            <section id="input">
                <form class="w3-center" id="add-new-task">
                    <div class="w3-container w3-theme-l3 w3-padding w3-center">
                        <div>
                            <div class="w3-third">
                                <div>
                                    <label for="new-task-name">Name:</label>
                                    <input id="new-task-name" name="new-task-name" type="text" required>
                                </div>
                                <div>
                                    <label for="new-task-date">Date:</label>
                                    <input id="new-task-date" name="new-task-date" type="datetime-local" required>
                                </div>
                            </div>
                            <div class="w3-third">
                                <div>
                                    <label for="new-task-priority">Priority:</label>
                                    <input id="new-task-priority" name="new-task-priority" type="number" required min="1" max="5" step="1" value="2">
                                </div>
                                <div>
                                    <label for="new-task-color">Color:</label>
                                    <input id="new-task-color" name="new-task-color" type="color">
                                </div>
                            </div>
                            <div class="w3-third">
                                <div>
                                    <label for="new-task-desc">Description:</label>
                                    <input id="new-task-desc" name="new-task-desc" type="text">
                                </div>
                                <div>
                                    <label for="new-task-email">Email:</label>
                                    <input id="new-task-email" name="new-task-email" type="email" multiple>
                                </div>
                            </div>
                        </div>
                        <input class="w3-padding w3-button w3-round-xlarge w3-red" type="submit" value="Add new">
                    </div>
                </form>
            </section>

            <section class="w3-container w3-theme-l3 w3-padding w3-center w3-row-padding w3-margin-top" id="display">
                <script>
                    $(document).ready(function(){

                    });
                </script>
                <div class="w3-half" id="timer">



                </div>

                <div class="w3-half" id ='table'>
                    <br>
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
                            <th scope="col">Date <br><input type="image" class='sortbydate' id="bydate" name="bydate" src="png-arrow2.png" width="20" height="20" /></th>
                            <th scope="col">Priority <br><input type="image" class='sortbypriority' id="bypriority" name="bypriority" src="png-arrow2.png" width="20" height="20" /></th>
                            <th scope="col">Name <br><input type="image" class='sortbyname' id="byname" name="byname" src="png-arrow2.png" width="20" height="20" /></th>
                            <th scope="col">Description</th>
                            <th scope="col">Remind at</th>
                            <th scope="col">Functions</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        global $user_id;
                        $query = $connection->prepare("SELECT `task_id`, `task_name`, `task_priority`, `task_color`, `task_description`, `task_attendees`, `task_date` FROM `tasks` WHERE `user_id` = ?");
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
                            echo "<form action='deletion.php' method='post'>";
                            echo"<td><input type='submit' value='DELETE' name='submit' >";
                            echo "<input type='hidden' name='taskid' value='$id'>";
                            echo "<input type='hidden' name='taskuserid' value='$user_id'>";
                            echo "<input type='hidden' name='taskname' value='$name'>";
                            echo "<input type='hidden' name='taskpriority' value='$priority'>";
                            echo "<input type='hidden' name='taskcolor' value='$color'>";
                            echo "<input type='hidden' name='taskdescription' value='$description'>";
                            echo "<input type='hidden' name='taskattendees' value='$attendees'>";
                            echo "<input type='hidden' name='taskdate' value='$date'></form>";

                            //for update
                            echo"<button class='Updation' name='update' id='update' value='$id'>UPDATE</button>";
                            echo "<input type='hidden' class='taskid' id='taskid' name='taskid' value='$id'></form>";
                            echo"</tr></div>";
                        }

                        $query->close();
                        ?>
                        </tbody>
                    </table>
                    <div id ='test'>

                    </div>
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

