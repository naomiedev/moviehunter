<?php

require_once 'Connexion.php';

function deleteReservation($reservationId) {
    try {
        $pdo = connectToDatabase();

        $stmt = $pdo->prepare("DELETE FROM reservations WHERE id = :reservationId");
        $stmt->bindParam(':reservationId', $reservationId, PDO::PARAM_INT);
        $stmt->execute();

        closeDatabaseConnection($pdo);
    } catch (PDOException $e) {
        die("Erreur lors de la suppression de la réservation : " . $e->getMessage());
    }
}

if (isset($_GET['id'])) {
    $reservationId = $_GET['id'];
    deleteReservation($reservationId);
} else {
    echo "ID de réservation non spécifié.";
}

header('Location: /pages/mesReservations.php');
exit();