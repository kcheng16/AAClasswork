const validText = str => {
  //trim: removes empty spaces before and after string
  return typeof str === 'string' && str.trim().length > 0; 
}

module.exports = validText;