<?php
    error_reporting(E_ALL ^ E_NOTICE); //specify All errors and warnings are displayed
    session_start();
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

    $sqlName = "SELECT Name FROM Student WHERE StudentId = '$id'";
    $resultSet = $pdo -> query($sqlName);
    $row = $resultSet -> fetch(PDO::FETCH_ASSOC);
    if($row){
        $name = $row['Name'];
    }

    include("./Common/Header.php");
    print <<<HTML
        <div class="container">
            <h1>Current Registration</h1>
            <p>Hello <span style='font-weight: bold;'>$name</span> (not you? change user <a href="Login.php">here</a>), the followings are your current registration</p>
        </div>
        HTML;
    include("./Common/Footer.php");
?>