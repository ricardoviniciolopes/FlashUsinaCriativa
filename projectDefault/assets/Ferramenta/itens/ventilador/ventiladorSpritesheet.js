(function(window) {
ventilador_mc_instance_1 = function() {
	this.initialize();
}
ventilador_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["ventiladorSpritesheet.png"], frames: [[0,0,314,434,0,127.2,213.15],[314,0,314,434,0,127.2,213.15],[628,0,314,434,0,127.2,213.15],[0,434,314,434,0,127.2,213.15],[314,434,314,434,0,127.2,213.15]]});
var ventilador_mc_instance_1_p = ventilador_mc_instance_1.prototype = new BitmapAnimation();
ventilador_mc_instance_1_p.BitmapAnimation_initialize = ventilador_mc_instance_1_p.initialize;
ventilador_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(ventilador_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.ventilador_mc_instance_1 = ventilador_mc_instance_1;
}(window));

