(function(window) {
cadeirademoca_mc_instance_1 = function() {
	this.initialize();
}
cadeirademoca_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["CadeirademocaSheet.png"], frames: [[0,0,344,457,0,125.45,217.25],[344,0,344,457,0,125.45,217.25],[0,457,344,457,0,125.45,217.25],[344,457,344,457,0,125.45,217.25],[0,914,344,457,0,125.45,217.25]]});
var cadeirademoca_mc_instance_1_p = cadeirademoca_mc_instance_1.prototype = new BitmapAnimation();
cadeirademoca_mc_instance_1_p.BitmapAnimation_initialize = cadeirademoca_mc_instance_1_p.initialize;
cadeirademoca_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(cadeirademoca_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.cadeirademoca_mc_instance_1 = cadeirademoca_mc_instance_1;
}(window));

