// ([1,2,2,3,3,3].uniq() => [1,2,3])

Array.prototype.uniq = function () {
  let newArr = []
  // for(let i = 0; i < this.length; i++){
    this.forEach(ele => {
    
    if (!newArr.includes(ele)) {
      newArr.push(ele);

    }
  })
  return newArr;
}

Array.prototype.twoSum = function (parameters) {
  let answer = [];
  for (let i = 0; i < this.length; i++) {
    for (let x = i + 1; x < this.length; x++) {
      if (this[i] + this[x] === 0) {
        answer.push([i, x])
      }
    }
  }
  console.log(parameters)
  return answer
}

const twoSum = function (arr) {
  let answer = [];
  for (let i = 0; i < arr.length; i++) {
    for (let x = i + 1; x < arr.length; x++) {
      if (arr[i] + arr[x] === 0) {
        answer.push([i, x])
      }
    }
  }
  return answer
}

// [1,2,3,4,5]
// [2,3,4,5]

// const twoSumEach = function (arr) {
//   let answer = [];
//   arr.forEach((topEle, index) => {
//     arr.slice(index+1, arr.length).forEach( (subEle, subIndex) => {
//       if (topEle + subEle === 0) {
//         answer.push([index, subIndex]);
//       }
//     })
//   })
//   return answer;
// }

// const f1 = function (arr) {
//   let newArr = []
//   // for(let i = 0; i < this.length; i++){
//     arr.forEach(ele => {
    
//     if (!newArr.includes(ele)) {
//       newArr.push(ele);

//     }
//   })
//   return newArr;
// }


// console.log(f1([1,2,3,1,2,3]))
//  [ [1,2,3],
//    [a,b,c]  ]
// [0...array.length].each do |index1|
//   subarray = []
//  [0...array.length].each do |index2|

Array.prototype.transposed = function () {
  let transposed = [];
    for (let colidx = 0; colidx <= this.length; colidx++){
      let subarray = [];
      for (let rowidx = 0; rowidx <= this.length; rowidx++){
        subarray.push(this[rowidx][colidx]);
      }
      transposed.push(subarray);
    }

  return transposed;
}