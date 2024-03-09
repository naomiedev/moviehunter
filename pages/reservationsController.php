<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/reservationForm.css" type="text/css" media="all" />
    <title>Verification d'accès</title>
</head>

<body>
    <form action="../server/saveCNI.php" method="post">
        <h2>Authentifiaction</h2>

        <label for="cni_number">Numéro CNI :</label>
        <input type="text" id="cni_number" name="cni_number" minlength="3" required>

        <div class="options">
            <button type="submit" class="reserve">Valider</button>
            <a href="/index.php">
                <div class="close">Anuler</div>
            </a>
        </div>

    </form>
</body>

</html>