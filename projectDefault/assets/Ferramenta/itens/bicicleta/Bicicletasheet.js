(function(window) {
bicicleta_mc_instance_1 = function() {
	this.initialize();
}
bicicleta_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["BicicletaSheet.png"], frames: [[0,0,464,412,0,232.2,190.7],[464,0,464,412,0,232.2,190.7],[0,412,464,412,0,232.2,190.7],[464,412,464,412,0,232.2,190.7],[0,824,464,412,0,232.2,190.7]]});
var bicicleta_mc_instance_1_p = bicicleta_mc_instance_1.prototype = new BitmapAnimation();
bicicleta_mc_instance_1_p.BitmapAnimation_initialize = bicicleta_mc_instance_1_p.initialize;
bicicleta_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(bicicleta_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.bicicleta_mc_instance_1 = bicicleta_mc_instance_1;
}(window));

