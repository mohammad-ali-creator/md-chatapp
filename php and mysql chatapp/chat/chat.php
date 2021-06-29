
<?php
session_start();

require_once("function.php");
if (!user_logedin()) {
    
    header("location: login.php");
    die();

}
$email = $_SESSION["email"];
$name = $_SESSION["name"];

if (isset($_POST["putMsg"])) {

    // $msg = $_POST["message"];
    $msg = htmlspecialchars($_POST["message"]);
    

    $conn -> query("INSERT INTO conver(msg, email, name) VALUES('$msg', '$email', '$name')");

    die();
}

if (isset($_POST["msgUpdate"])) {
    $all_msg = $conn -> query("SELECT * FROM conver");


    while($row = $all_msg -> fetch_object()){
        $msg = $row -> msg;
        $user_name = $row -> name;

        echo "<p class='usermsg'> $user_name: $msg</p>";
        
    }


    die();
}




?>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Chat app</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>

        <!-- logout btn -->
        <div class="logout-btn">
            <a href="logout.php">Logout</a>
        </div>
        
        <div class="chat--box">
        <!-- chat present box -->
            <div class="chat--view">
            </div>
            <!-- chat input -->
            <form class="chat--form" action="" method="POST">
                <input class="chat--input" type="text" name="message" placeholder="Write a message..." required><input type="submit" value="Sent" name="sent_msg">
                
            </form>
        </div>


    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/script.js"></script>
    </body>
</html>