function curriedSum (number_of_ingredients){
  let pot = 0;
  return function addIngredients(ingredients){
    pot += ingredients;
    number_of_ingredients -= 1;
  if (number_of_ingredients === 0){
    return pot;
  } else {
    return addIngredients //keep adding ingredients
  }
  }
}





const sum = curriedSum(4);
console.log(sum(5)(30)(20)(1)); // => 56