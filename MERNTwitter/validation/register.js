const Validator = require('validator');
const validText = require("./valid-text");

module.exports = function validateRegisterInput(data){
  const errors = {}
  
  data.handle = validText(data.handle) ? data.handle : "";
  data.email = validText(data.email) ? data.email : "";
  data.password = validText(data.password) ? data.password : "";
  data.password2 = validText(data.password2) ? data.password2 : "";

  //Handle/Username validation========================================
  if (!Validator.isLength(data.handle, {min: 2, max: 30})){
    errors.handle = "Handle must be between 2 and 30 characters"
  }

  if (Validator.isEmpty(data.handle)){
    errors.handle = "Handle can not be blank"
  }

  //Email validation=================================================
  if (Validator.isEmpty(data.email)){
    errors.email = "Email can not be blank"
  }

  if (!Validator.isEmail(data.email)){
    errors.email = "Email is invalid"
  }

  //Password validation==============================================
  if (Validator.isEmpty(data.password)){
    errors.password = "Password can not be blank"
  }

  if (!Validator.isLength(data.password, {min: 6, max: 30})){
    errors.password = "Password must be between 6 and 30 characters"
  }

  if (!Validator.equals(data.password, data.password2)){
    errors.password2 = "Passwords must match"
  }

  return{
    errors,
    isValid: Object.keys(errors).length === 0
  }
}