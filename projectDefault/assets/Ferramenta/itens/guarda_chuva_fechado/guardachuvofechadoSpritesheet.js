(function(window) {
guardachuvafechado_mc_instance_1 = function() {
	this.initialize();
}
guardachuvafechado_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["guardachuvofechadoSpritesheet.png"], frames: [[0,0,249,390,0,126.7,203.05],[249,0,249,390,0,126.7,203.05]]});
var guardachuvafechado_mc_instance_1_p = guardachuvafechado_mc_instance_1.prototype = new BitmapAnimation();
guardachuvafechado_mc_instance_1_p.BitmapAnimation_initialize = guardachuvafechado_mc_instance_1_p.initialize;
guardachuvafechado_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(guardachuvafechado_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.guardachuvafechado_mc_instance_1 = guardachuvafechado_mc_instance_1;
}(window));

