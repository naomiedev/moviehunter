<?php

function connectToDatabase() {
    
    $ENV =
     [
    'DB_NAME' => 'cinema',
    'DB_HOST' => 'localhost',
    'DB_USER' => 'root',
    'DB_PASSWORD' => '',
    ];
      
    try {
        $pdo = new PDO('mysql:host='.$ENV['DB_HOST'].';dbname='.$ENV['DB_NAME'].';charset=utf8', $ENV['DB_USER'], $ENV['DB_PASSWORD']);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $pdo;
    } catch (PDOException $e) {
        die("Erreur de connexion à la base de données : " . $e->getMessage());
    }
}

function closeDatabaseConnection($pdo) {
    $pdo = null;
}

