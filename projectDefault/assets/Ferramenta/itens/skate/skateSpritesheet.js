(function(window) {
skate_mc_instance_1 = function() {
	this.initialize();
}
skate_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["skateSpritesheet.png"], frames: [[0,0,482,196,0,232.35,95.15],[482,0,482,196,0,232.35,95.15],[0,196,482,196,0,232.35,95.15],[482,196,482,196,0,232.35,95.15],[0,392,482,196,0,232.35,95.15],[482,392,482,196,0,232.35,95.15],[0,588,482,196,0,232.35,95.15],[482,588,482,196,0,232.35,95.15],[482,196,482,196,0,232.35,95.15],[0,392,482,196,0,232.35,95.15]]});
var skate_mc_instance_1_p = skate_mc_instance_1.prototype = new BitmapAnimation();
skate_mc_instance_1_p.BitmapAnimation_initialize = skate_mc_instance_1_p.initialize;
skate_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(skate_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.skate_mc_instance_1 = skate_mc_instance_1;
}(window));

