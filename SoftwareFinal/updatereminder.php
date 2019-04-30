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
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
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
    </style>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
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
                            /* "<table width = '100%'>" +
                            "<tr><th>Date</th>" +
                            "<th>Priority</th>" +
                            "<th>Reminder Name</th>" +
                            "<th>Description</th>" +
                            "<th>Color</th>" +
                            "<th>Invitees</th>" +
                            "</tr>"; */
                            "<table width = '100%'>" +
                            "<tr align='center'>UPDATE REMINDER INFORMATION</tr>";

                        $.each(json,function (index,item) {
                            //var $date = $(item['task_date']);
                            //DateTime $date = DateTime.TryParse($(item['task_date']),'dd/mm/yyyy hh:mm tt');
                            //console.log($date);
                           // var $dt = $date.toString("hh:mm tt");


                           // console.log($dt);

                            string +=
                                "<tr align='left'><td>TASK DATE: <input type='text' name='taskdate' id='taskdate'value='" + item['task_date'] + "'></td>" +
                                //"<tr><td><input type='datetime-local' name='taskdate' value='" + item['task_date'] + "'></td>" +
                                "<td align='left'>TASK PRIORITY: <input type='text' name='taskpriority' id='taskpriority' value='" + item['task_priority'] + "'></td></tr>" +
                                "<tr align='left'><td>TASK NAME: <input type='text' name='taskname' id='taskname' value='"     + item['task_name']     + "'></td>" +
                                "<td>TASK DESCRIPTION: <input type='text' name='taskdescription' id='taskdescription' value='" + item['task_description'] + "'></td></tr>" +
                                "<tr align='left'><td>TASK COLOR: <input type='color'name='taskcolor' id='taskcolor' value='" + item['task_color'] + "'></td>" +
                                "<td>TASK INVITEES: <input type='text' name='taskattendees' id='taskattendees' value='" + item['task_attendees'] + "'></td></tr>" +
                                "<tr><td align='center'><button class='ConfirmUpdate' name='confirmup' id='confirmup' value='" + item['task_id'] + "'>Implement Updates</button></td></tr>"

                        });
                        string += "</table>";

                        //Assigning result to "display" div in "search.php" file.

                        $("#popout").html(string).show();
                    }
                });



            
            

            
            
        //$("#records").on("click","#example button",function(){
        
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


   // $("#popout .ConfirmUpdate").click(function(){
           // $("#popout").find(".ConfirmUpdate").click(function(){
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

            var tbody = jQuery('#to-do-list > tbody');

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

                }
            });

    });
});
</script>
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
        </div>
    </div>
</header>

<div class="w3-row-padding w3-center w3-margin-top w3-padding-16" id="page">
    <!-- [content] -->
    <section id="content">
        <!-- [to-do] -->
        <article id="to-do">

            <section class="w3-container w3-theme w3-padding w3-center w3-row-padding w3-margin-top w3-padding-16" id="display">
                <div id="myModal" class="modal">

                    <!-- Modal content -->
                    <div class="modal-content">
                        <span class="close">&times;</span>
                        <div id='popout'>
                        </div>
                    </div>

                </div>

                <script>
                    $(document).ready(
                        function() {
                            setInterval(function() {
                                var someval = Math.floor(Math.random() * 100);
                                $('#sample').text('Test ' + someval);
                            }, 1000);

                        });
                </script>

                <div class="w3-half" id ='table'>
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
                            echo "<form action='deletion.php' method='post'>";
                            echo"<td><input type='submit' value='Delete' name='submit' >";

                            echo "<input type='hidden' id='taskid' name='taskid' value='$id'></form>";

                            //echo "<form><input type='button' value='UPDATE' class='Updation'>";
                           echo"<button class='Updation' name='update' id='update' value='$id'>UPDATE</button>";
                            echo "<input type='hidden' class='taskid' id='taskid' name='taskid' value='$id'></form>";
                            echo"</tr></div>";
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
    <script>
    </script>
    <footer id="footer">
        <details>
            <summary></summary>
            <p></p>
        </details>
    </footer>
</div>

<!-- Footer -->
<footer class="w3-container w3-theme-dark w3-padding-16" id="footer">
    <h3>Footer</h3>
    <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
    <div style="position:relative;bottom:55px;" class="w3-tooltip w3-right">
        <span class="w3-text w3-theme-light w3-padding">Go To Top</span> 
        <a class="w3-text-white" href="#myHeader"><span class="w3-xlarge">
    <i class="fa fa-chevron-circle-up"></i></span></a>
    </div>
</footer>

</body>
</html>