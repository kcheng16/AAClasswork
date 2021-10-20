Array.prototype.myEach = function (paramCallback) {
  for (i = 0; i < this.length; i++) {
    paramCallback(this[i]);
  }
}

Array.prototype.myMap = function (paramCallback) {
  let results = [];
  this.myEach(ele => {
    results.push(paramCallback(ele));
  });
  return results;
}

const callback = function (ele) {
  console.log(`${ele}!`);
  return `${ele}!`;
}

Array.prototype.myReduce = function (paramCallback,initialValue) {
  if (initialValue === null){
    initialValue = this.shift
  }
  this.myEach(ele => {
    initialValue = paramCallback(initialValue, ele)
  })
  return initialValue
}