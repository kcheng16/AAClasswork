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