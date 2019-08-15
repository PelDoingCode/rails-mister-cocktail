import Typed from 'typed.js';

function loadDynamicText() {
  new Typed('#banner-typed-text', {
    strings: ["Need a cocktail?", "Select a cocktail ! ", "And come order one ! "],
    typeSpeed: 20,
    loop: true
  });
}

function followmousse () {

  // how here i give the path to the class
  // var balls = document.getElementsByClassName("ball");
  // var balls = document.getElementsByClassName(".../views/layouts/ball");
  var balls = document.getElementsByClassName("ball");
  document.onmousemove = function(){
    var x = event.clientX * 100 / window.innerWidth + "%";
    var y = event.clientY * 100 / window.innerHeight + "%";
    //event.clientX => get the horizontal coordinate of the mouse
    //event.clientY => get the Vertical coordinate of the mouse
    //window.innerWidth => get the browser width
    //window.innerHeight => get the browser height

    for(var i=0;i<2;i++){
      balls[i].style.left = x;
      balls[i].style.top = y;
      balls[i].style.transform = "translate(-"+x+",-"+y+")";
    }
  }

}
export { loadDynamicText };
export { followmousse };
