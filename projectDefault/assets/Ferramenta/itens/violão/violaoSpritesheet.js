(function(window) {
violao_mc_instance_1 = function() {
	this.initialize();
}
violao_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["violaoSpritesheet.png"], frames: [[0,0,293,383,0,138.1,198.6],[293,0,293,383,0,138.1,198.6],[586,0,293,383,0,138.1,198.6],[0,383,293,383,0,138.1,198.6],[293,383,293,383,0,138.1,198.6]]});
var violao_mc_instance_1_p = violao_mc_instance_1.prototype = new BitmapAnimation();
violao_mc_instance_1_p.BitmapAnimation_initialize = violao_mc_instance_1_p.initialize;
violao_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(violao_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.violao_mc_instance_1 = violao_mc_instance_1;
}(window));

