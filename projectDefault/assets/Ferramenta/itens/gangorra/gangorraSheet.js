(function(window) {
gangorra_mc_instance_1 = function() {
	this.initialize();
}
gangorra_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["gangorraSheet.png"], frames: [[0,0,621,409,0,307.1,197.45],[0,409,621,409,0,307.1,197.45],[0,818,621,409,0,307.1,197.45],[0,1227,621,409,0,307.1,197.45],[0,1636,621,409,0,307.1,197.45]]});
var gangorra_mc_instance_1_p = gangorra_mc_instance_1.prototype = new BitmapAnimation();
gangorra_mc_instance_1_p.BitmapAnimation_initialize = gangorra_mc_instance_1_p.initialize;
gangorra_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(gangorra_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.gangorra_mc_instance_1 = gangorra_mc_instance_1;
}(window));

