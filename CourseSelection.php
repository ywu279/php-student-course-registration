<?php
    error_reporting(E_ALL ^ E_NOTICE); //specify All errors and warnings are displayed
    session_start();
    extract($_POST);
    if(!isset($_SESSION["login"])){
        header("Location: Login.php");
        exit();
    }

    //connect to MySQL DB
    $dbConnection = parse_ini_file("Lab5.ini");
    extract($dbConnection);
    $pdo = new PDO($dsn, $username, $password);

    //Before you use any session, you always have to check if that session has value or not!
    $id = $_SESSION["id"] ?? "";

    //get student Name from DB
    if($id){
        $sqlName = "SELECT Name FROM Student WHERE StudentId = '$id'";
        $nameSet = $pdo -> query($sqlName);
        $row = $nameSet -> fetch(PDO::FETCH_ASSOC);
        if($row){
            $name = $row['Name'];
        }
    }


    $semsterSelected = "";


    include("./Common/Header.php");
    print <<<HTML
    <div class="container">
        <h1>Course Selection</h1>
        <p>Welcome <span style='font-weight: bold;'>$name</span> (not you? change user <a href="Login.php">here</a>)</p>
        <p>You have registered <span style='font-weight: bold;'>0</span> hours for the selected semester.</p>
        <p>You can register <span style='font-weight: bold;'>16</span> more hours of course(s) for the semester.</p>
        <p>Please note that the courses you have registered will not be displayed in the list</p>  
        <form action="CourseSelection.php" method="post"> 
        <div class="row col-md-3">
            <select name="semester" id="semester" class="form-control">
    HTML;

    //get a dropdown list of semesters from DB
    $sqlSemester = "SELECT * FROM Semester";
    {
        $semesterSet = $pdo -> query($sqlSemester);
        Foreach($semesterSet as $row){
            $selected = $semesterSelected == $row['SemesterCode'] ? "selected" : "";
            echo "<option value='", $row['SemesterCode'], "' $selected>", $row['Year']." ".$row['Term'], "</option>";
        }
    }

    print <<<HTML
            </select>
        </div>
        <br>
        <table class='table' style='margin-top: 30px;'>
            <tr>
                <th>Code</th>
                <th>Course Title</th>
                <th>Hours</th>
                <th>Select</th>
            </tr>
    HTML;

    $sqlCourse = "";

    echo "</table>";
    echo "</form></div>";

    include("./Common/Footer.php");
?>