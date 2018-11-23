'use strict';

var favori = document.querySelectorAll(".favo");


for (var i = 0; i < favori.length; i++) {
  favori[i].addEventListener("mouseover", function() {
    this.textContent = 'Huum tu veux me rajouter dans tes favoris :)';
  });

    favori[i].addEventListener("mouseout", function() {
      this.textContent = 'Ajouter aux favoris';
    });
  }
