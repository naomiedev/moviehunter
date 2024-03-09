<?php

require_once 'Connexion.php';

// Récupération des films de la table "films"
try {
    $pdo = connectToDatabase();

    $query = $pdo->query("SELECT * FROM films");
    $films = $query->fetchAll(PDO::FETCH_ASSOC);

    closeDatabaseConnection($pdo);

    // Renvois des films
    return $films;

} catch (PDOException $e) {
    die("Erreur lors de la récupération des films : " . $e->getMessage());
}

