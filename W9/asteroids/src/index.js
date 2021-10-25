const MovingObject = require("./moving_object.js");

window.MovingObject = MovingObject;


window.addEventListener('DOMContentLoaded', function (){
  let canvasEle = document.getElementById("game-canvas");
  let context = canvasEle.getContext("2d");

  let circle = new MovingObject({pos: [150,150], vel: [25,25], radius: 50, color: 'red'})
  circle.draw(context);
  circle.move();
  window.circle = circle;
});