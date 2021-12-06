const express = require("express");
const router = express.Router();
const passport = require('passport');
const validateTweetInput = require('../../validation/tweets')
const Tweet = require("../../models/Tweet")

//=================================================ROUTES
router.get("/test", (request, response) => {
  response.json({msg: "this is the TWEETS route"});
});

router.post("/", 
  passport.authenticate('jwt', {session: false}),
  (request, response) => {
    const {isValid, errors} = validateTweetInput(request.body);

    if (!isValid){
      return response.status(400).json(errors);
    }

    const newTweet = new Tweet({
      user: request.user.id,
      text: request.body.text
    });

    newTweet.save()
      .then(tweet => response.json(tweet));
});

router.get("/", (request, response) => {
  Tweet.find()
    .sort({date: -1})
    .then(tweets => response.json(tweets))
    .catch(error => response.status(400).json(error))
})

router.get("/user/:user_id", (request, response) => {
  Tweet.find({user: request.params.user_id})
    .then(tweets => response.json(tweets))
    .catch(error => response.status(400).json(error))
})

router.get("/:id", (response, request) => {
  Tweet.findById(request.params.id)
  .then(tweet => response.json(tweet))
  .catch(error => response.status(400).json(error))
})

module.exports = router