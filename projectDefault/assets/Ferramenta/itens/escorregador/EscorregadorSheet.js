(function(window) {
escorregador_mc_instance_1 = function() {
	this.initialize();
}
escorregador_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["EscorregadorSheet.png"], frames: [[0,0,505,435,0,259.85,228.8],[505,0,505,435,0,259.85,228.8],[0,435,505,435,0,259.85,228.8],[505,435,505,435,0,259.85,228.8],[0,870,505,435,0,259.85,228.8]]});
var escorregador_mc_instance_1_p = escorregador_mc_instance_1.prototype = new BitmapAnimation();
escorregador_mc_instance_1_p.BitmapAnimation_initialize = escorregador_mc_instance_1_p.initialize;
escorregador_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(escorregador_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.escorregador_mc_instance_1 = escorregador_mc_instance_1;
}(window));

