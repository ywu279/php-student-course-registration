<?php
    error_reporting(E_ALL ^ E_NOTICE); //specify All errors and warnings are displayed
    session_start();
    extract($_POST);
    if(!isset($_SESSION["login"])){
        header("Location: Login.php");
        exit();
    }

    //connect to MySQL DB
    include("./Common/config/db.php");
    $pdo = connect();

    //Before you use any session, you always have to check if that session has value or not!
    $id = $_SESSION["id"] ?? "";

    //get student Name from DB
    $sqlName = "SELECT Name FROM Student WHERE StudentId = '$id'";
    $nameSet = $pdo -> query($sqlName);
    $row = $nameSet -> fetch(PDO::FETCH_ASSOC);
    if($row){
        $name = $row['Name'];
    }


    if(isset($delete)){

    }

    if(isset($clear)){
        $errorMsg = "";
        $checkbox = "";
    }

    include("./Common/Header.php");
    print <<<HTML
        <div class="container">
            <h1>Current Registration</h1>
            <p>Hello <span style='font-weight: bold;'>$name</span> (not you? change user <a href="Login.php">here</a>), the followings are your current registration</p>
            <form action="CurrentRegistration.php" method="post">
                <table class="table">
                    <tr>
                        <th>Year</th>
                        <th>Term</th>
                        <th>Course Code</th>
                        <th>Course Title</th>
                        <th></th>
                        <th>Hours</th>
                        <th>Select</th>
                    </tr>
    HTML;

    $semesterArr = [];
    $sqlSemesterCode = "SELECT r.SemesterCode
                        FROM Registration r
                        WHERE r.StudentId = '$id'
                        GROUP BY r.SemesterCode;";
    $semesterCodeSet = $pdo -> query($sqlSemesterCode);
    foreach($semesterCodeSet as $row){
        $semesterArr[] = $row['SemesterCode'];
    }

    foreach($semesterArr as $s){
        $totalHours = 0;
        $sqlRegistrations = "SELECT s.Year, s.Term, r.CourseCode, c.Title, c.WeeklyHours
                         FROM Registration r INNER JOIN Course c ON r.CourseCode = c.CourseCode
					                         INNER JOIN Semester s ON r.SemesterCode = s.SemesterCode
                         WHERE r.StudentId = '$id' AND r.SemesterCode = '$s';";
        $registrationsSet = $pdo -> query($sqlRegistrations);
        foreach($registrationsSet as $row){
            print <<<table_body
            <tr>
                <td>{$row['Year']}</td>
                <td>{$row['Term']}</td>
                <td>{$row['CourseCode']}</td>
                <td>{$row['Title']}</td>
                <td></td>
                <td>{$row['WeeklyHours']}</td>
                <td><input type="checkbox" name="checkbox[]" value="{$row['CourseCode']}"></td>
            </tr>
            table_body;
            $totalHours += $row['WeeklyHours'];
        }
        echo "<tr><td></td><td></td><td></td><td></td><td style='font-weight: bold;'>Total Weekly Hours</td><td style='font-weight: bold;'>$totalHours</td><td></td></tr>";
    }

    print <<<HTML
                </table>
                <input type="submit" name="delete" id="delete" value="Delete Selected" class="btn btn-primary">
                <input type="submit" name="clear" value="Clear" class="btn btn-primary">
            </form>
        </div>

        <script>
            document.getElementById("delete").addEventListener("click", function(){
                confirm("The selected registrations will be deleted!")
            })
        </script>
    HTML;
    include("./Common/Footer.php");
?>