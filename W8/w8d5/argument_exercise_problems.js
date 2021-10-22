// function sum (){
//   let args = Array.from(arguments);
//   let total = 0;

//   for (num of args){ //args.each do |num|
//     total += num;
//   }
//   return total;
// }

// function sum () {
//   let args = [...arguments];
//   let total = 0;
//   for (num of args){
//     total += num;
//   }
//   return total;
// }

function sum (...arguments) {
  let total = 0;
  for (num of arguments){
    total += num;
  }
  return total;
}

console.log(sum(1, 2, 3, 4))