(function(window) {
mesa_instance_1 = function() {
	this.initialize();
}
mesa_instance_1._SpriteSheet = new SpriteSheet({images: ["MesameninaSpritesheet.png"], frames: [[0,0,559,559,0,279.25,279.25],[0,559,559,559,0,279.25,279.25],[0,1118,559,559,0,279.25,279.25]]});
var mesa_instance_1_p = mesa_instance_1.prototype = new BitmapAnimation();
mesa_instance_1_p.BitmapAnimation_initialize = mesa_instance_1_p.initialize;
mesa_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(mesa_instance_1._SpriteSheet);
	this.paused = false;
}
window.mesa_instance_1 = mesa_instance_1;
}(window));

