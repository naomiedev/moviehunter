<?php
    session_start();
if ($_SERVER['REQUEST_METHOD'] === 'POST') {


    $_SESSION['cni'] = isset($_POST['cni_number']) ? htmlspecialchars($_POST['cni_number']) : '';
    header("Location: /pages/mesReservations.php");
    exit(); 
}
