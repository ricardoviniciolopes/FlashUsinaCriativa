(function(window) {
treno_mc_instance_1 = function() {
	this.initialize();
}
treno_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["trenoSpritesheet.png"], frames: [[0,0,554,417,0,256.1,194.25],[554,0,554,417,0,256.1,194.25],[1108,0,554,417,0,256.1,194.25],[0,417,554,417,0,256.1,194.25],[554,417,554,417,0,256.1,194.25],[1108,417,554,417,0,256.1,194.25]]});
var treno_mc_instance_1_p = treno_mc_instance_1.prototype = new BitmapAnimation();
treno_mc_instance_1_p.BitmapAnimation_initialize = treno_mc_instance_1_p.initialize;
treno_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(treno_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.treno_mc_instance_1 = treno_mc_instance_1;
}(window));

