(function(window) {
Carrinhomercado_mc_instance_1 = function() {
	this.initialize();
}
Carrinhomercado_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["CarrinhomercadoSheet.png"], frames: [[0,0,358,436,0,175.65,209.4],[358,0,358,436,0,175.65,209.4],[0,436,358,436,0,175.65,209.4],[358,436,358,436,0,175.65,209.4],[0,872,358,436,0,175.65,209.4],[358,872,358,436,0,175.65,209.4]]});
var Carrinhomercado_mc_instance_1_p = Carrinhomercado_mc_instance_1.prototype = new BitmapAnimation();
Carrinhomercado_mc_instance_1_p.BitmapAnimation_initialize = Carrinhomercado_mc_instance_1_p.initialize;
Carrinhomercado_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(Carrinhomercado_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.Carrinhomercado_mc_instance_1 = Carrinhomercado_mc_instance_1;
}(window));

