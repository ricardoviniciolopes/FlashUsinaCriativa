(function(window) {
Computador_mc_instance_1 = function() {
	this.initialize();
}
Computador_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["ComputadorSheet.png"], frames: [[0,0,414,434,0,188.05,225.2],[414,0,414,434,0,188.05,225.2],[0,434,414,434,0,188.05,225.2],[414,434,414,434,0,188.05,225.2],[0,868,414,434,0,188.05,225.2]]});
var Computador_mc_instance_1_p = Computador_mc_instance_1.prototype = new BitmapAnimation();
Computador_mc_instance_1_p.BitmapAnimation_initialize = Computador_mc_instance_1_p.initialize;
Computador_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(Computador_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.Computador_mc_instance_1 = Computador_mc_instance_1;
}(window));

