const View = require("./ttt-view.js");
const Game = require("../ttt_node/game");

const game1 = new Game();


document.addEventListener("DOMContentLoaded", () => {
  // Your code here
  const board = document.getElementsByClassName("ttt");
  const view1 = new View(game1, board);

});

