(function(window) {
guardachuvaAberto_mc_instance_1 = function() {
	this.initialize();
}
guardachuvaAberto_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["GuardachuvaabertoSheet.png"], frames: [[0,0,467,426,0,222.55,200.25],[467,0,467,426,0,222.55,200.25],[0,426,467,426,0,222.55,200.25],[467,426,467,426,0,222.55,200.25],[0,852,467,426,0,222.55,200.25],[467,852,467,426,0,222.55,200.25]]});
var guardachuvaAberto_mc_instance_1_p = guardachuvaAberto_mc_instance_1.prototype = new BitmapAnimation();
guardachuvaAberto_mc_instance_1_p.BitmapAnimation_initialize = guardachuvaAberto_mc_instance_1_p.initialize;
guardachuvaAberto_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(guardachuvaAberto_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.guardachuvaAberto_mc_instance_1 = guardachuvaAberto_mc_instance_1;
}(window));

