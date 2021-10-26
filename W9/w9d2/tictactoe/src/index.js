const View = require("./ttt-view.js");
const Game = require("../ttt_node/game");



document.addEventListener("DOMContentLoaded", () => {
  // Your code here
  const board = document.getElementsByClassName("ttt");
  const game1 = new Game();
  const view1 = new View(game1, board);
  console.log(view1);
});

