(function(window) {
mesamadeira_mc_instance_1 = function() {
	this.initialize();
}
mesamadeira_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["mesademadeiraSpritesheet.png"], frames: [[0,0,648,346,0,286.9,139.7],[648,0,648,346,0,286.9,139.7],[1296,0,648,346,0,286.9,139.7],[0,346,648,346,0,286.9,139.7],[648,346,648,346,0,286.9,139.7],[1296,346,648,346,0,286.9,139.7]]});
var mesamadeira_mc_instance_1_p = mesamadeira_mc_instance_1.prototype = new BitmapAnimation();
mesamadeira_mc_instance_1_p.BitmapAnimation_initialize = mesamadeira_mc_instance_1_p.initialize;
mesamadeira_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(mesamadeira_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.mesamadeira_mc_instance_1 = mesamadeira_mc_instance_1;
}(window));

