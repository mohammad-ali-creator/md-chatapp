
<?php

require_once("config.php");

if (isset($_POST["create_acc"])){
    $fname = $_POST["fname"];
    $lname = $_POST["lname"];
    $email = $_POST["email"];
    $pass = $_POST["password"];
    $enpass = md5($pass);

    $get_email = $conn -> query("SELECT * FROM users WHERE email = '$email'");

    if (($get_email -> num_rows) == 1) {
        $status = "Email already exits";
    }else {
        $insert = $conn -> query("INSERT INTO users(fname, lname, email, pass) VALUES('$fname', '$lname', '$email', '$enpass')"); 
        $status = "Account created successfully";
    }

}

?>




<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>register</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="container flex">
            <h2>Create Account</h2>
            <form class="regi_form" action="" method="POST">
                <input type="text" name="fname" placeholder="First Name" >
                <input type="text" name="lname" placeholder="Last Name" >
                <input type="email" name="email" placeholder="Email" >
                <input type="password" name="password" placeholder="Password" >
                <input type="submit" name="create_acc" value="Create Account">

                <p class="text">Have an account <a href="login.php"> Log in</a></p>
                <p> <?php if(isset($status)){echo $status;}?> </p>
            </form>
        </div>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="js/script.js"></script>
    </body>
</html>
