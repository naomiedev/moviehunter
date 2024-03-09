document.getElementsByClassName('close')[0].addEventListener('click', ()=>{
    document.getElementById('filmsDetails').style.display="none"
    document.getElementById('flut').style.display="none"
})

document.getElementById('flut').addEventListener('click', ()=>{
    document.getElementById('filmsDetails').style.display="none"
    document.getElementById('flut').style.display="none"
})

function closeFilmDetails(film){
    // alert(film.name)
    document.querySelector('#filmsDetails .nom').innerHTML=film.name
    document.querySelector('#filmsDetails .description').innerHTML=film.description
    document.querySelector('#filmsDetails .lieu').innerHTML=film.localization
    document.querySelector('#filmsDetails .categorie').innerHTML=film.categorie
    document.querySelector('#filmsDetails .places').innerHTML=film.places
    document.querySelector('#filmsDetails .date').innerHTML=film.launch_date
    document.querySelector('#filmsDetails #goTo').href='pages/reservationForm.php?id='+film.id

    document.getElementById('flut').style.display="inherit"
    document.getElementById('filmsDetails').style.display="inherit"
}




