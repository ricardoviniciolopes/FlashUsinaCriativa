(function(window) {
trem_mc_instance_1 = function() {
	this.initialize();
}
trem_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["tremSpritesheet.png"], frames: [[0,0,568,259,0,281.65,132.4],[0,259,568,259,0,281.65,132.4],[0,518,568,259,0,281.65,132.4]]});
var trem_mc_instance_1_p = trem_mc_instance_1.prototype = new BitmapAnimation();
trem_mc_instance_1_p.BitmapAnimation_initialize = trem_mc_instance_1_p.initialize;
trem_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(trem_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.trem_mc_instance_1 = trem_mc_instance_1;
}(window));

