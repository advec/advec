var body = document.querySelector("body");
var btnMenu = document.querySelector(".btn-nav");
var megaMenu = document.querySelector(".megamenu");
var sliderSection = document.querySelector(".slider");
var navul = document.querySelector('.navbar__container__row__navbar__items ul');

navul.addEventListener('mouseover', function() {

  var li = document.querySelectorAll('.navbar__container__row__navbar__items ul li');
  for (var i = 0; i < li.length; i++) {
   li[i].style.opacity = ".5";
  }

});

navul.addEventListener('mouseout', function() {

  var li = document.querySelectorAll('.navbar__container__row__navbar__items ul li');
  for (var i = 0; i < li.length; i++) {
   li[i].style.opacity = "1";
  }

});

btnMenu.addEventListener("click", function() {

    this.classList.toggle("open");

  	if(!this.classList.contains('open')) {
      megaMenu.classList.remove("appear");
      megaMenu.style.visibility = "hidden";
      body.classList.remove("overflow--hidden");
  	}
    else {
      megaMenu.style.visibility = "visible";
      megaMenu.classList.add("appear");
      body.classList.add("overflow--hidden");
    }

});
