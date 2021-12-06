const express = require("express");
const app = express();
const passport = require('passport')

// tells our app which source or request it should respond to:
const bodyParser = require('body-parser');

// Database connection:
const mongoose = require("mongoose");
const db = require("./config/keys").mongoURI;

// additional routes import:
const users = require("./routes/api/users");
const tweets = require("./routes/api/tweets");

// import models:
const User = require("./models/User");

// connect mongoose to DB===================================================
mongoose
  .connect(db, {useNewUrlParser: true})
  .then(() => console.log("connected to mongoDB"))
  .catch(error => console.log(error))

  app.use(passport.initialize());
  require('./config/passport')(passport);

  // Body parser to respond to other apps like POSTMAN
  app.use(bodyParser.urlencoded({
    extended: false
  }));

  app.use(bodyParser.json());

  // Routes:
  app.get("/", (request, response) => {
    const user = new User({
      handle: "bob",
      email: "bob@mail.com",
      password: "password"
    })
    user.save()
    response.send("Hello AA")
});

app.use("/api/users", users)
app.use("/api/tweets", tweets)

const port = process.env.PORT || 5000;

app.listen(port, () => {console.log(`listening on port ${port}`)})