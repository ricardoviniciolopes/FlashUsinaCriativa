(function(window) {
pa_mc_instance_1 = function() {
	this.initialize();
}
pa_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["paSpritesheet.png"], frames: [[0,0,576,576,0,287.5,287.5],[576,0,576,576,0,287.5,287.5],[1152,0,576,576,0,287.5,287.5],[0,576,576,576,0,287.5,287.5],[576,576,576,576,0,287.5,287.5]]});
var pa_mc_instance_1_p = pa_mc_instance_1.prototype = new BitmapAnimation();
pa_mc_instance_1_p.BitmapAnimation_initialize = pa_mc_instance_1_p.initialize;
pa_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(pa_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.pa_mc_instance_1 = pa_mc_instance_1;
}(window));

