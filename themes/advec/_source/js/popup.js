// Get the modal
var popup = document.querySelector('.popup__deposito')

// Get the button that opens the modal
var btn = document.querySelector('.btn__popup--deposito');

// Get the <span> element that closes the modal
var span = document.querySelector('.popup__content__close');

// When the user clicks on the button, open the modal
btn.onclick = function() {
    popup.style.display = "flex";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    popup.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == popup) {
        popup.style.display = "none";
    }
}
