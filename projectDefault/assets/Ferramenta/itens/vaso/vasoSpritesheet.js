(function(window) {
vaso_mc_instance_1 = function() {
	this.initialize();
}
vaso_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["vasoSpritesheet.png"], frames: [[0,0,245,420,0,115.2,221.8],[245,0,245,420,0,115.2,221.8],[490,0,245,420,0,115.2,221.8],[735,0,245,420,0,115.2,221.8],[0,420,245,420,0,115.2,221.8]]});
var vaso_mc_instance_1_p = vaso_mc_instance_1.prototype = new BitmapAnimation();
vaso_mc_instance_1_p.BitmapAnimation_initialize = vaso_mc_instance_1_p.initialize;
vaso_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(vaso_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.vaso_mc_instance_1 = vaso_mc_instance_1;
}(window));

