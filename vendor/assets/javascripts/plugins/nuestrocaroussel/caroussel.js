/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var i = 0;
var slideNumber = 7;
var intervalId;
var comidasArray = [];
var desayunosArray = [];
var cenasArray = [];
var snacksArray = [];
var todasComidas = [];
$(document).ready(function () {
    encuentraImagenesRecetas();
    intervalId = window.setInterval(caroussel, 3000);
    $("#slideContainer").mouseover(function () {
        window.clearInterval(intervalId);
    });
    $("#slideContainer").mouseout(function () {
        intervalId = window.setInterval(caroussel, 3000);
    });

});
function caroussel() {
    caroussel2("imgDesayunos", desayunosArray);
    caroussel2("imgComidas", comidasArray);
    caroussel2("imgCenas", cenasArray);
    caroussel2("imgSnacks", snacksArray);
    caroussel2("mainImg", todasComidas);
    i++;
}
function caroussel2(imgId, imageArray) {
    $("#" + imgId).attr("src", "img/" + imageArray[i % imageArray.length]);
}


function encuentraImagenesRecetas() {
    var xmlhttp = new XMLHttpRequest();
    var url = "json/recetas.json";
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
            myFunction(xmlhttp.responseText);
        }
    };
    xmlhttp.open("GET", url, true);
    xmlhttp.send();
}
function myFunction(response) {
    var arr = JSON.parse(response);
    for (var i = 0; i < arr.length; i++) {
        todasComidas.push(arr[i].image);
        switch (arr[i].tipo) {
            case "desayuno":
                desayunosArray.push(arr[i].image);
                break;
            case "comida":
                comidasArray.push(arr[i].image);
                break;
            case"cena":
                cenasArray.push(arr[i].image);
                break;
            case"snack":
                snacksArray.push(arr[i].image);
                break;
        }
    }
}

