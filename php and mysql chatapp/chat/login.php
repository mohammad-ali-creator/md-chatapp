
<?php
session_start();

require_once("function.php");

if(user_logedin()){
    header("chat.php");
    die();
}

if (isset($_POST["login"])) {

    $email = $_POST["email"];
    $pass = md5($_POST["password"]);

    $user_data = $conn -> query("SELECT * FROM users WHERE email = '$email'");

    if ($user_data -> num_rows == 1) {
        $data = $user_data -> fetch_object();
        
        if (($data -> pass) == $pass) {
            $_SESSION["user"] = "set";
            $_SESSION['email'] = $email;
            $_SESSION['name'] = $data -> fname;
            header("location: chat.php");
        }else {
            $status = "Password does not match!";
        }
    }else {
        $status = "Email dose not match";
    }
}




?>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>login</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="container flex">
            <h2>User Login</h2>
            <form class="login_form" action="" method="POST">
                <input type="email" name="email" placeholder="Email" required>
                <input type="password" name="password" placeholder="Password" required>
                <input type="submit" name="login" value="Login">

                <p class="text">New user? <a href="register.php"> Create an account</a></p>
                <p><?php if(isset($status)){echo $status;}?></p>
            </form>
        </div> 
        
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="js/script.js"></script>  
    </body>
</html>
