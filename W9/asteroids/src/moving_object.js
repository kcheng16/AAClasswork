module.exports = MovingObject
function MovingObject (options){
  this.pos = options[pos];
  this.vel = options[vel];
  this.radius = options[radius];
  this.color = options[color];
}

MovingObect.prototype.draw = function (ctx){
  context.beginPath();
  context.arc(this.pos[0], this.pos[1], this.radius, 0, 2 * Math.PI, false);
  ctx.fillStyle = this.color;
}


