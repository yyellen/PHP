<?php
session_start();

// $id=$_GET["id"]; //測試時用GET
$id=$_POST["id"];

$newItem=[
    $id=>1
];

if(!isset($_SESSION["cart"])){
    $_SESSION["cart"]=[];
}

$product_exists=0;
foreach($_SESSION["cart"] as $value){
    if(array_key_exists($id, $value))
    {
        $product_exists=1;
    }
}

if($product_exists===0){
    array_push($_SESSION["cart"], $newItem);
}

echo json_encode($newItem);
?>