<?php
$films = require('server/Films.php')
?>

<div class="box" id="fun">
    <div class="head">
        <h2>FUN</h2>
        <p class="text-right"><a>See all</a></p>
    </div>
    <?php
    foreach ($films as $f) {
        if ($f['categorie'] == 'fun') {
    ?>
            <div class="movie" data-film-name="<?php echo $f['name'] ?>"  onclick="closeFilmDetails(<?php echo htmlspecialchars(json_encode($f), ENT_QUOTES, 'UTF-8'); ?>)">
                <div class="movie-image">
                    <span class="play"> ( <?php echo $f['places'] ?>) places disponibles<span class="name"><?php echo $f['name'] ?></span></span>
                    <a href="#"><img src="css/images/<?php echo $f['image_url'] ?>" alt="" /></a>
                </div>
                <div class="rating">
                    <p><?php echo $f['price'] ?></p>
                    <div class="stars">
                        <div class="stars-in"></div>
                    </div>
                    <span class="comments">12</span>
                </div>
            </div>
    <?php
        }
    }
    ?>
    <div class="cl">&nbsp;</div>
</div>