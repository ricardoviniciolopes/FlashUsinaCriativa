(function(window) {
bonecodeneve_mc_instance_1 = function() {
	this.initialize();
}
bonecodeneve_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["BonecodeneveSheet.png"], frames: [[0,0,268,376,0,114.55,185.75],[268,0,268,376,0,114.55,185.75],[536,0,268,376,0,114.55,185.75],[0,376,268,376,0,114.55,185.75],[268,376,268,376,0,114.55,185.75]]});
var bonecodeneve_mc_instance_1_p = bonecodeneve_mc_instance_1.prototype = new BitmapAnimation();
bonecodeneve_mc_instance_1_p.BitmapAnimation_initialize = bonecodeneve_mc_instance_1_p.initialize;
bonecodeneve_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(bonecodeneve_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.bonecodeneve_mc_instance_1 = bonecodeneve_mc_instance_1;
}(window));

