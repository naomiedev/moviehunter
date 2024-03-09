<?php
session_start();
require_once 'Connexion.php';

function getReservations()
{
    try {

        $pdo = connectToDatabase();
        $cni_number = isset($_SESSION['cni']) ? $_SESSION['cni'] : null;;

        // Utilisons une requête préparée pour éviter les attaques SQL depuis le front-end
        $stmt = $pdo->prepare("SELECT * FROM reservations WHERE cni_number = :cni_number");
        $stmt->bindParam(':cni_number', $cni_number, PDO::PARAM_STR);
        $stmt->execute();

        $reservations = $stmt->fetchAll(PDO::FETCH_ASSOC);

        closeDatabaseConnection($pdo);
        return $reservations;
    } catch (PDOException $e) {
        return $reservations = null;
        // die("Erreur lors de la récupération des films : " . $e->getMessage());
    }
}
// var_dump($reservations);

// header("Location: /pages/mesReservations.php");
