<?php
    error_reporting(E_ALL ^ E_NOTICE); //specify All errors and warnings are displayed
    session_start();
    if(!isset($_SESSION["login"])){
        header("Location: Login.php");
        exit();
    }


    //Before you use any session, you always have to check if that session has value or not!
    $name = $_SESSION["name"] ?? "";


    include("./Common/Header.php");
    print <<<HTML
    <div class="container">
        <h1>Course Selection</h1>
        <p>Welcome <span style='font-weight: bold;'>$name</span>(not you? change user here)</p>
    </div>
    HTML;
    include("./Common/Footer.php");
?>
