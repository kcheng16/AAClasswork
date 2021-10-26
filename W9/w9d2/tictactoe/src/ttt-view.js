class View {
  constructor(game, el) {
    this.game = game;
    
    this.setupBoard();
    const ul = document.querySelector("ul")
    this.el = ul
  }

  setupBoard() {
    //create ul & li
    const classtictactoe = document.querySelector(".ttt");
    console.log(classtictactoe);
    const ul = document.createElement("UL");
              // let text = document.createTextNode("water");
              // ul.appendChild(text);
    classtictactoe.appendChild(ul);
  
    // add attribute to li (data-pos) by using game.board @ position
    for (let i = 0; i < 9; i++) {
      let li = document.createElement("li");
      ul.appendChild(li);
      let x = 0;
      if (i >= 3 && i < 6) x = 1;
      if (i >= 6) x = 2;
      
      let y = i % 3;
      li.setAttribute("data-pos", [`${x}`,`${y}`]);//[0,0] [0,1] [0,2]
                            // <li data-pos="[x, y]"></li>
    }

  }
  
  bindEvents() {}

  handleClick(e) {}

  makeMove(square) {}

}

module.exports = View;
