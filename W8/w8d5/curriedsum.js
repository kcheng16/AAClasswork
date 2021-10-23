// function curriedSum (number_of_ingredients){
//   let pot = 0;
//   return function addIngredients(ingredients){
//     pot += ingredients;
//     number_of_ingredients -= 1;
//   if (number_of_ingredients === 0){
//     return pot;
//   } else {
//     return addIngredients //keep adding ingredients
//   }
//   }
// }

Function.prototype.curry = function(numberOfIngredients) {
  let pot = [];

  let that = this;

  return function addIngredients(...ingredients){
    
    
  if (numberOfIngredients === pot.length){
    console.log(that);
    return that.apply(pot);
  } else {
    for (ingredient of ingredients) {
      if (numberOfIngredients === pot.length){
        return pot;
      }
      pot.push(ingredient);
    }
    return addIngredients //keep adding ingredients
  }
  }
}



// Function.prototype.apply = function(context) {

// }

// const sum = curriedSum(4);
// console.log(sum(5)(30)(20)(1)); // => 56