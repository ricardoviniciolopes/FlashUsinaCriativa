(function(window) {
fantasma_mc_instance_1 = function() {
	this.initialize();
}
fantasma_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["FantasmaSheet.png"], frames: [[0,0,375,475,0,203.05,221.7],[375,0,375,475,0,203.05,221.7],[0,475,375,475,0,203.05,221.7],[375,475,375,475,0,203.05,221.7],[0,950,375,475,0,203.05,221.7]]});
var fantasma_mc_instance_1_p = fantasma_mc_instance_1.prototype = new BitmapAnimation();
fantasma_mc_instance_1_p.BitmapAnimation_initialize = fantasma_mc_instance_1_p.initialize;
fantasma_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(fantasma_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.fantasma_mc_instance_1 = fantasma_mc_instance_1;
}(window));

