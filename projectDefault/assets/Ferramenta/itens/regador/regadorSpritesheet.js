(function(window) {
regador_mc_instance_1 = function() {
	this.initialize();
}
regador_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["regadorSpritesheet.png"], frames: [[0,0,282,417,0,140.10000000000002,203.3],[282,0,508,417,0,253.10000000000002,203.3],[0,417,604,417,0,301.1,203.3],[0,834,600,417,0,299.1,203.3],[0,1251,508,417,0,253.10000000000002,203.3]]});
var regador_mc_instance_1_p = regador_mc_instance_1.prototype = new BitmapAnimation();
regador_mc_instance_1_p.BitmapAnimation_initialize = regador_mc_instance_1_p.initialize;
regador_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(regador_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.regador_mc_instance_1 = regador_mc_instance_1;
}(window));

