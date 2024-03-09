<?php
    
$filmDetails = require('../server/GetFilm.php');

?><?php ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/reservationForm.css" type="text/css" media="all" />
    <title>Formulaire De Réservation</title>
</head>

<body>
    <?php
    if (!$filmDetails) {
    ?>
        <div class="alert">
            <p>Mauvaise URL, s'il vous plait veillez reéssayer</p>
        </div>
    <?php } else { ?>
        <form action="../server/StoreReservation.php" method="post">
            <h2>Formulaire De Réservation</h2>

            <label for="first_name">Prénom :</label>
            <input type="text" id="first_name" name="first_name" minlength="3" required>

            <label for="last_name">Nom :</label>
            <input type="text" id="last_name" name="last_name" minlength="3"  required>

            <label for="cni_number">Numéro CNI :</label>
            <input type="text" id="cni_number" name="cni_number" minlength="3"  required>

            <label for="films_price">Nombre de tickets :</label>
            <input type="number" id="ticket_number" name="ticket_number" min="0" required>

            <label for="films_name">Nom du Film :</label>
            <input type="text" id="films_name" name="films_name" readonly value="<?php echo $filmDetails['name']; ?>">

            <label for="films_price">Prix du Film :</label>
            <input type="number" id="films_price" name="films_price" min="0" step="0.01" readonly value="<?php echo $filmDetails['price']; ?>">

            <div class="options">
                <button type="submit" class="reserve">Réserver</button>
                <a href="/index.php">
                    <div class="close">Anuler</div>
                </a>
            </div>

        </form>
    <?php } ?>
</body>

</html>