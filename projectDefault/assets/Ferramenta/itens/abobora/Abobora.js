(function(window) {
Abobora_mc_instance_1 = function() {
	this.initialize();
}
Abobora_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["AboboraSheet.png"], frames: [[0,0,404,409,0,217,234],[0,409,404,409,0,217,234],[0,818,404,409,0,217,234],[0,1227,404,409,0,217,234],[0,1636,404,409,0,217,234]]});
var Abobora_mc_instance_1_p = Abobora_mc_instance_1.prototype = new BitmapAnimation();
Abobora_mc_instance_1_p.BitmapAnimation_initialize = Abobora_mc_instance_1_p.initialize;
Abobora_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(Abobora_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.Abobora_mc_instance_1 = Abobora_mc_instance_1;
}(window));

