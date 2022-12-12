# Student Course Registration - PHP
To implement an online course registration web application that allows students to signup/login, register courses, and show the student's current registration summary via accessing the MySQL database.

## Disclaimer
This project is a school project. It can only be used for educational purposes only. Please do not copy and submit it as your own work.

## Built with
- [AMPPS](https://ampps.com/) - A complete package of Apache, MySQL, and PHP on your desktop, same like the server that provides many open source web applications
<img src="https://user-images.githubusercontent.com/58931129/181635566-09586a5d-1181-4201-834e-8a9fcada1fae.png" width="200px">

- [PhpMyAdmin](https://www.phpmyadmin.net/) - A free software tool written in PHP to create the MySQL databases and manage them easily over the web.
- [PhpStorm](https://www.jetbrains.com/phpstorm/)

## ERD 
<img src="https://user-images.githubusercontent.com/58931129/181647979-5dd800e7-1927-4fc7-963a-6cc09e7290c9.png" width="700px">

## Get Started with the Database
1. On PhpMyAdmin, create a database **CST8257**, create a new user `PHPSCRIPT` with password `1234` and grant all privileges to this user to access the **CST8257** database.
2. Run "Script for Creating tables in CST8257 Database.sql" to create the Student table, Course table, Semester table, CourseOffer table, Registration table.
<img src="https://user-images.githubusercontent.com/58931129/181652171-6d99b5d1-0965-40f3-9372-2029df8367d7.png" width="700px">
3. Run "Script for Populating CST8257 Database.sql" to insert data into the Course table, Semester table, and CourseOffer table.

## Objectives
- Process HTML form validation with **RegEx** - `preg_match($regex, $Password)`
- Use **session** management to temporarily store the data
  ```php
  $_SESSION["id"] = $id;
  
  //if the data has been stored in the session, display the data on the page when the user enters this page
  $id = $_SESSION["id"] ?? "";
  ```
- Access the database with the **PDO** object
  ```php
  ; this is the initialization file "Lab5.ini" that contains the database connection data for the application
  [database connection]
  dsn = "mysql:host=localhost;dbname=cst8257;port=3306;charset=utf8"
  username = "PHPSCRIPT"
  password = "1234"
  ```
  ```php
  $dbConnection = parse_ini_file("Lab5.ini");
  extract($dbConnection);
  $pdo = new PDO($dsn, $username, $password);
  ```
- Develope Login/Register feature with **hashed passwords** and save the hashed password in the database - `hash("sha256", $Password)`
- Use the **Prepared Statement** to prevent SQL Injection Attack for data access in PHP
  ```php
  //fetch one row (and the only one) from the prepared statement after execution
  $sqlLogin = "SELECT StudentId FROM Student WHERE StudentId = :id AND Password = :hashedPassword";
  $preparedStatement = $pdo -> prepare($sqlLogin);
  $preparedStatement -> execute(['id'=>$id, 'hashedPassword'=>$hashedPassword]);
  $row = $preparedStatement -> fetch(PDO::FETCH_ASSOC);
  if(!$row){
      $logInErr = "Incorrect student ID and/or Password!";
  }
  else{
      header("Location: CourseSelection.php");
  } 
  ```

## Screenshots
### Home
<img src="https://user-images.githubusercontent.com/58931129/181651957-c5d9cf9a-18cb-4131-9fa5-0a6e3dfaebd1.png" width="600px" >

### Sign Up
<img src="https://user-images.githubusercontent.com/58931129/181651603-7a282808-32c4-4948-9429-72dc6df0ce88.png" width="600px" >

### Log In
<img src="https://user-images.githubusercontent.com/58931129/181651673-874c5493-b21c-45e0-8922-4bb0165864cf.png" width="600px" >

### Course Selection
<img src="https://user-images.githubusercontent.com/58931129/181651733-ae1c2339-d4f2-4c4d-865a-8f5a069be3c9.png" width="800px" >

### Current Registration
<img src="https://user-images.githubusercontent.com/58931129/181651836-e1bccb21-783b-4d71-9e46-76109a7532d0.png" width="800px" >
<img src="https://user-images.githubusercontent.com/58931129/181651890-ea29956e-35f3-4035-9829-01a67d0a9cfe.png" width="800px" >



