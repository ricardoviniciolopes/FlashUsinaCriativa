(function(window) {
boiadepato_mc_instance_1 = function() {
	this.initialize();
}
boiadepato_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["BoiadepatoSheet.png"], frames: [[0,0,513,202,0,244.4,80.85],[0,202,513,202,0,244.4,80.85],[513,202,483,202,0,214.4,80.85],[0,404,513,202,0,244.4,80.85],[0,606,513,202,0,244.4,80.85]]});
var boiadepato_mc_instance_1_p = boiadepato_mc_instance_1.prototype = new BitmapAnimation();
boiadepato_mc_instance_1_p.BitmapAnimation_initialize = boiadepato_mc_instance_1_p.initialize;
boiadepato_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(boiadepato_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.boiadepato_mc_instance_1 = boiadepato_mc_instance_1;
}(window));

