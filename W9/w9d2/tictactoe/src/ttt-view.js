class View {
  constructor(game, el) {
    this.game = game;
    this.el = el
    this.handleClick.bind(this);
    
    this.setupBoard();
    // const ul = document.querySelector("ul")
  }

  setupBoard() {
    //create ul & li
    // const classtictactoe = document.querySelector(".ttt");
    const ul = document.createElement("UL");
              // let text = document.createTextNode("water");
              // ul.appendChild(text);
    this.el.appendChild(ul);
  
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
  
  bindEvents() { //add event listener
    this.el.addEventListener("click", this.handleClick(e))
  }

  handleClick(e) { //checked if what's beeing clicked is an 'li'
    //bind handleclick
    
    let liTarget;
    
    if (e.target === document.querySelector("li")){
      liTarget = e.target;
    }
    console.log( "handled click")
    this.makeMove(liTarget);

  }

  makeMove(square) {}

}

module.exports = View;
