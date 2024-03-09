<?php

require_once 'Connexion.php';

// Assurez-nous que les données du formulaire ont été envoyées via POST
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    // Récupération
    $first_name = isset($_POST['first_name']) ? $_POST['first_name'] : '';
    $last_name = isset($_POST['last_name']) ? $_POST['last_name'] : '';
    $cni_number = isset($_POST['cni_number']) ? $_POST['cni_number'] : '';
    $films_name = isset($_POST['films_name']) ? $_POST['films_name'] : '';
    $films_price = isset($_POST['films_price']) ? $_POST['films_price'] : 0;
    $ticket_number = isset($_POST['ticket_number']) ? $_POST['ticket_number'] : 1;

    try {
        $pdo = connectToDatabase();

        // Échappons les valeurs pour éviter les attaques d'injection SQL
        $first_name = $pdo->quote($first_name);
        $last_name = $pdo->quote($last_name);
        $cni_number = $pdo->quote($cni_number);
        $films_name = $pdo->quote($films_name);
        $films_price = $pdo->quote($films_price);
        $ticket_number = $pdo->quote($ticket_number);

        $sql = "INSERT INTO reservations (first_name, last_name, cni_number, films_name, films_price, ticket_number) VALUES ($first_name, $last_name, $cni_number, $films_name, $films_price, $ticket_number)";
        $stmt = $pdo->prepare($sql);
        $stmt->execute();

        closeDatabaseConnection($pdo);

    } catch (PDOException $e) {
        die("Erreur lors de l'enregistrement de la réservation : " . $e->getMessage());
    }
} else {
    echo "La requête n'est pas valide.";
}

header("Location: /index.php");
