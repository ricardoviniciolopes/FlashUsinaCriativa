(function(window) {
pneu_mc_instance_1 = function() {
	this.initialize();
}
pneu_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["pneuSpritesheet.png"], frames: [[0,0,285,407,0,141.45,208.35],[285,0,385,407,0,191.45,208.35],[0,407,423,407,0,210.45,208.35],[423,407,424,407,0,211.45,208.35],[0,814,380,407,0,189.45,208.35],[380,814,270,407,0,134.45,208.35]]});
var pneu_mc_instance_1_p = pneu_mc_instance_1.prototype = new BitmapAnimation();
pneu_mc_instance_1_p.BitmapAnimation_initialize = pneu_mc_instance_1_p.initialize;
pneu_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(pneu_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.pneu_mc_instance_1 = pneu_mc_instance_1;
}(window));

