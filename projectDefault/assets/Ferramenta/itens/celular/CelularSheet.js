(function(window) {
Celular_mc_instance_1 = function() {
	this.initialize();
}
Celular_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["CelularSheet.png"], frames: [[0,0,189,418,0,78,215.35],[189,0,189,418,0,78,215.35],[378,0,189,418,0,78,215.35],[567,0,189,418,0,78,215.35],[756,0,189,418,0,78,215.35]]});
var Celular_mc_instance_1_p = Celular_mc_instance_1.prototype = new BitmapAnimation();
Celular_mc_instance_1_p.BitmapAnimation_initialize = Celular_mc_instance_1_p.initialize;
Celular_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(Celular_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.Celular_mc_instance_1 = Celular_mc_instance_1;
}(window));

