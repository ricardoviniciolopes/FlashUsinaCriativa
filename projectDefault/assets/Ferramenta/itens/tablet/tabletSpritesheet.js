(function(window) {
tablet_mc_instance_1 = function() {
	this.initialize();
}
tablet_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["tabletSpritesheet.png"], frames: [[0,0,575,272,0,282.65,174.35],[0,272,575,272,0,282.65,174.35],[0,544,575,272,0,282.65,174.35]]});
var tablet_mc_instance_1_p = tablet_mc_instance_1.prototype = new BitmapAnimation();
tablet_mc_instance_1_p.BitmapAnimation_initialize = tablet_mc_instance_1_p.initialize;
tablet_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(tablet_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.tablet_mc_instance_1 = tablet_mc_instance_1;
}(window));

