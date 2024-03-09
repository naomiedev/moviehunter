<?php

require_once '../server/GetReservations.php';
$reservations = getReservations();
// var_dump($reservations)
?>
<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/mesReservations.css">
    <title>Liste des Réservations</title>
</head>

<body>
    <?php if ($reservations) : ?>
        <div class="contain">
            <h3 class="profile"><?php echo $reservations[0]['first_name']; ?> <?php echo $reservations[0]['last_name']; ?></h3>
            <div>
                <h1>Liste des Réservations</h1>
                <a href="/index.php">
                    <div class="reserve">Home</div>
                </a>
            </div>
        </div>

        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre de tickets</th>
                    <th>Film</th>
                    <th>Prix</th>
                    <th>Options</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($reservations as $reservation) : ?>
                    <tr>
                        <td><?php echo $reservation['id']; ?></td>
                        <td><?php echo $reservation['ticket_number']; ?></td>
                        <td><?php echo $reservation['films_name']; ?></td>
                        <td><?php echo $reservation['films_price']; ?></td>
                        <td>
                            <a href="/index.php">Home</a> |
                            <a class="danger" href="/server/DeleteReservation.php?id=<?php echo $reservation['id']; ?>">Supprimer</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    <?php else : ?>
        <p>Aucune réservation trouvée.</p>
    <?php endif; ?>

</body>

</html>