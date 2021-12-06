const express = require("express");
const router = express.Router()
const User = require('../../models/User')
const bcrypt = require("bcryptjs")
const keys = require("../../config/keys")
const jwt = require('jsonwebtoken')

//validations:
const validateRegisterInput = require('../../validation/register')
const validateLoginInput = require('../../validation/login')

//==================================================================================ROUTES

router.get("/test", (request, response) => {
  response.json({msg: "this is the USERS route"});
});
//======================================================================REGISTER
router.post('/register', (request, response) => { 
  const {errors, isValid} = validateRegisterInput(request.body)

  if(!isValid){
    return response.status(400).json(errors);
  }

  User.findOne({
    email: request.body.email
  })
    .then(user => {
      if (user){ //user exists
        return response.status(400).json({email: "A User is already registered with that email"})
      } else { //user doesn't exist
        const newUser = new User({
          handle: request.body.handle,
          email: request.body.email,
          password: request.body.password
        })
        // bcrypt our password (1st argument: how many times salted, 2nd argument:callback that happen after salting )
        bcrypt.genSalt(10, (error, salt) => {
          // hash the password + add the salt
          bcrypt.hash(newUser.password, salt, (error, hashedPassword) => {
            if (error) throw error;
            newUser.password = hashedPassword

            newUser.save()
              .then(user => response.send(user))
              .catch(error => {response.send(error); console.log(error)})
          })
        })

      }
    })
})
//======================================================================LOGIN
router.post("/login", (request, response) => { 
  const {errors, isValid} = validateLoginInput(request.body)

  if(!isValid){
    return response.status(400).json(errors)
  }

  const email = request.body.email;
  const password = request.body.password;

  User.findOne({email}) //or ES6: User.findOne({ email})
    .then(user => {
      if (!user) {
        return response.status(404).json({email: "This user does not exist."});
      }
      bcrypt.compare(password, user.password)
        .then(isMatch => {
          if (isMatch){
            // response.json({msg: "Success!"});

            const payload = {
              id: user.id,
              handle: user.handle,
              email: user.email
            }
            jwt.sign(payload, 
                    keys.secretOrKey, 
                    {expiresIn: 3600}, 
                    (error, token) => {
                      response.json({
                        success: true,
                        token: "Bearer " + token
                      })
                    }
            )
          } else {
            return response.status(400).json({password: "Incorrect password"})
          }
        })
    })
})
module.exports = router;