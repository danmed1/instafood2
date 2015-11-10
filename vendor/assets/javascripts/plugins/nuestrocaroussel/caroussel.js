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
    
     $("#bsearch").click(function(){
        document.location = "/receta/busqueda/"+$("#search").val();
    });
    
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
    $("#" + imgId).attr("src", "/assets/desayunos/" + imageArray[i % imageArray.length]);
}

function encuentraImagenesRecetas() {
    var arr = ["food1.jpg","food2.jpg","food3.jpg","food4.jpg","food5.jpg","food6.jpg","food7.jpg","food8.jpg"];
    
    desayunosArray.push(arr[0]);
    desayunosArray.push(arr[1]);
    comidasArray.push(arr[2]);
    comidasArray.push(arr[3]);
    cenasArray.push(arr[4]);
    cenasArray.push(arr[5]);
    snacksArray.push(arr[6]);
    snacksArray.push(arr[7]);
   
    for (var i = 0; i < arr.length; i++) {
                
                todasComidas.push(arr[i]);
     
        
    }
}

