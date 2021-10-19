// ([1,2,2,3,3,3].uniq() => [1,2,3])

// Array.prototype.uniq = function () {
//   let newArr = []
//   // for(let i = 0; i < this.length; i++){
//     this.forEach(ele => {
    
//     if (!newArr.includes(ele)) {
//       newArr.push(ele);

//     }
//   })
//   return newArr;
// }

const f1 = function (arr) {
  let newArr = []
  // for(let i = 0; i < this.length; i++){
    arr.forEach(ele => {
    
    if (!newArr.includes(ele)) {
      newArr.push(ele);

    }
  })
  return newArr;
}

console.log(f1([1,2,3,1,2,3]))