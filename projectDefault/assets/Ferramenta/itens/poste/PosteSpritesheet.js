(function(window) {
poste_mc_instance_1 = function() {
	this.initialize();
}
poste_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["PosteSpritesheet.png"], frames: [[0,0,190,422,0,100,215.55]]});
var poste_mc_instance_1_p = poste_mc_instance_1.prototype = new BitmapAnimation();
poste_mc_instance_1_p.BitmapAnimation_initialize = poste_mc_instance_1_p.initialize;
poste_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(poste_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.poste_mc_instance_1 = poste_mc_instance_1;
}(window));

