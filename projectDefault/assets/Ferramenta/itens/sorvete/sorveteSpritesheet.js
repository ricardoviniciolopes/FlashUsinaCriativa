(function(window) {
sorvete_mc_instance_1 = function() {
	this.initialize();
}
sorvete_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["sorveteSpritesheet.png"], frames: [[0,0,166,366,0,67.6,174.8],[166,0,166,366,0,67.6,174.8]]});
var sorvete_mc_instance_1_p = sorvete_mc_instance_1.prototype = new BitmapAnimation();
sorvete_mc_instance_1_p.BitmapAnimation_initialize = sorvete_mc_instance_1_p.initialize;
sorvete_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(sorvete_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.sorvete_mc_instance_1 = sorvete_mc_instance_1;
}(window));

