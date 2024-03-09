
document.addEventListener("DOMContentLoaded", function() {
    var movieElements = document.getElementsByClassName("movie");

    document.getElementById("searchInput").addEventListener("input", function() {
        var searchValue = this.value.toLowerCase();

        for (var i = 0; i < movieElements.length; i++) {
            var filmName = movieElements[i].getAttribute("data-film-name").toLowerCase();

            var isVisible = filmName.includes(searchValue);

            movieElements[i].style.display = isVisible ? "block" : "none";
        }
    });
});
