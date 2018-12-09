// Title //
// var title = document.querySelector('h1');
// title.innerHTML = "LES EDITIONS DU MICROBE";

// DISPLAY INTRO BLOCK //
var book = document.getElementsByClassName('book');
var intro = document.getElementsByClassName('book-container');
var image = document.getElementsByClassName('img-fluid');

for(var i = 0; i < image.length; i++) {
    image[i].addEventListener("click", bindClick(i));
}

function bindClick(i) {
    return function() {
        intro[i].style.display = "block";
        intro[i].style.color = "white";
        book[i].style.backgroundColor = "grey";
        image[i].style.float = "left";
        image[i].style.width = "20%";
        image[i].style.margin = "0";
    };
}

// DISPLAY NONE // 

for(var i = 0; i < intro.length; i++) {
    intro[i].addEventListener("click", displayNone(i));
}

function displayNone(i) {
    return function() {
        intro[i].style.display = "none";
        book[i].style.backgroundColor = "lightgrey";
        image[i].style.float = "none";
        image[i].style.width = "20vh";
        image[i].style.margin = "auto";
    };
}

console.log({intro, image, book});

// TOGGLE FORM //

$(".btn-dark").click(function(){
    $(".add_book").toggle(500);
});