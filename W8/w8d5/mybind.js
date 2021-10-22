// Function.prototype.myBind = function(context, ...arguments1){
//   let that = this;
//   return function (...arguments2){
//     let allArguments = arguments1.concat(arguments2);
//     return that.call(context, ...allArguments);
//   }
// }

// Function.prototype.myBind = function(context){
//   let that = this;
//   // console.log(arguments[0])
//   // console.log(arguments[1])
//   let bindArgs = Array.from(arguments).slice(1);
//   return function (){
//     let callArgs = Array.from(arguments);
//     let allArgs = bindArgs.concat(callArgs);
//     return that.apply(context, allArgs);
//   }
// }


class Cat {
  constructor(name) {
    this.name = name;
  }

  says(sound, person) {
    console.log(`${this.name} says ${sound} to ${person}!`);
    return true;
  }
}

class Dog {
  constructor(name) {
    this.name = name;
  }
}

const markov = new Cat("Markov");
const pavlov = new Dog("Pavlov");

markov.says("meow", "Ned");
// Markov says meow to Ned!
// true

// bind time args are "meow" and "Kush", no call time args
markov.says.myBind(pavlov, "meow", "Kush")();
// Pavlov says meow to Kush!
// true

// no bind time args (other than context), call time args are "meow" and "a tree"
markov.says.myBind(pavlov)("meow", "a tree");
// Pavlov says meow to a tree!
// true

// bind time arg is "meow", call time arg is "Markov"
markov.says.myBind(pavlov, "meow")("Markov");
// Pavlov says meow to Markov!
// true

// no bind time args (other than context), call time args are "meow" and "me"
const notMarkovSays = markov.says.myBind(pavlov);
notMarkovSays("meow", "me");
// Pavlov says meow to me!
// true