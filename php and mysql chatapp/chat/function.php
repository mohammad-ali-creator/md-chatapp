
<?php

require_once("config.php");

function user_logedin(){
    if(isset($_SESSION["user"])){
        return true;
    }
}