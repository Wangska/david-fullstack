<?php 
session_start();
if (!isset($_SESSION['form_data'])) {
    header("Location: ../index.php"); 
    exit;
}

$form_data = $_SESSION['form_data'];

include 'getbod.php';
$age = calculateAge($form_data['dob']); 

unset($_SESSION['form_data']);

// Include the functions file
include 'functions.php'; // Adjust the path as necessary
?>