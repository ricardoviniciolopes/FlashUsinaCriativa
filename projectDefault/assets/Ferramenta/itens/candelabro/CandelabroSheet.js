(function(window) {
candelabro_mc_instance_1 = function() {
	this.initialize();
}
candelabro_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["CandelabroSheet.png"], frames: [[0,0,468,468,0,233.55,233.55],[468,0,468,468,0,233.55,233.55],[0,468,468,468,0,233.55,233.55],[468,468,468,468,0,233.55,233.55]]});
var candelabro_mc_instance_1_p = candelabro_mc_instance_1.prototype = new BitmapAnimation();
candelabro_mc_instance_1_p.BitmapAnimation_initialize = candelabro_mc_instance_1_p.initialize;
candelabro_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(candelabro_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.candelabro_mc_instance_1 = candelabro_mc_instance_1;
}(window));

