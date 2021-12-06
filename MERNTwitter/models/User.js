const mongoose  = require("mongoose");
const Schema = mongoose.Schema;

const UserSchema = new Schema({
  handle: {
    type: String,
    required: true
  },
  email: {
    type: String,
    required: true
  },
  password: {
    type: String,
    required: true
  },
  date: {
    type: Date,
    default: Date.now
  }
});

//1st param: name of model
//2nd param: the schema we typed above
const User = mongoose.model('users', UserSchema);

module.exports = User;