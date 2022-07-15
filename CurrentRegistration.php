<?php
    error_reporting(E_ALL ^ E_NOTICE); //specify All errors and warnings are displayed
    session_start();
    if(!isset($_SESSION["login"])){
        header("Location: Login.php");
        exit();
    }

    include("./Common/Header.php");
    print <<<HTML
        <div class="container">
            <h1>Current Registration</h1>
        </div>
        HTML;
    include("./Common/Footer.php");
?>