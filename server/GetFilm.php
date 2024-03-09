<?php

require_once 'Connexion.php';

try {
    $pdo = connectToDatabase();

    if (isset($_GET['id'])) {
        $filmId = htmlspecialchars($_GET['id']);

        // Utilisons une requête préparée pour éviter les attaques SQL depuis le front-end
        $stmt = $pdo->prepare("SELECT * FROM films WHERE id = :filmId");
        $stmt->bindParam(':filmId', $filmId, PDO::PARAM_STR);
        $stmt->execute();

        $filmDetails = $stmt->fetch(PDO::FETCH_ASSOC);
    } else {
        $filmDetails = null;
    }

    closeDatabaseConnection($pdo);

    return $filmDetails;

} catch (PDOException $e) {
    die("Erreur lors de la récupération des films : " . $e->getMessage());
}
?>