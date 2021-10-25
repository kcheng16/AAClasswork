function MovingObject (options){
  this.pos = options['pos'];
  this.vel = options['vel'];
  this.radius = options['radius'];
  this.color = options['color'];
  this.move = this.move.bind(this);
  this.draw = this.draw.bind(this);
}

MovingObject.prototype.draw = function (ctx){
  console.log(this)
  ctx.fillStyle = this.color;
  ctx.beginPath();
  ctx.arc(this.pos[0], this.pos[1], this.radius, 0, 2 * Math.PI, false);
  ctx.fill();

}


const NORMAL_FRAME_TIME_DELTA = 1000/60

MovingObject.prototype.move = function (timeDelta) {
  const velocityScale = timeDelta / NORMAL_FRAME_TIME_DELTA;
  
  let that = this;
  console.log(that);
  offsetX = that.vel[0]*velocityScale;
  offsetY = that.vel[1]*velocityScale;

  that.pos = [that.pos[0] + offsetX, that.pos[1] + offsetY];

  this.draw()
}

module.exports = MovingObject
