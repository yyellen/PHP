<?php
require_once("db_connect.php");
$account=$_POST["account"];
$password=md5($_POST["password"]);

$sql="SELECT * FROM users WHERE account = '$account' AND password = '$password'";
//echo $sql;

if ($conn->query($sql) == TRUE) {
    $result = $conn->query($sql);
    $userCount=$result->num_rows;
    echo $userCount;
} else {
    echo "" . $conn->error;
}

?>