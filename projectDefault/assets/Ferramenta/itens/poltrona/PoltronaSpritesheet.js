(function(window) {
poltrona_mc_instance_1 = function() {
	this.initialize();
}
poltrona_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["PoltronaSpritesheet.png"], frames: [[0,0,519,425,0,210.15,196.15],[519,0,519,425,0,210.15,196.15],[1038,0,519,425,0,210.15,196.15],[0,425,519,425,0,210.15,196.15],[519,425,519,425,0,210.15,196.15]]});
var poltrona_mc_instance_1_p = poltrona_mc_instance_1.prototype = new BitmapAnimation();
poltrona_mc_instance_1_p.BitmapAnimation_initialize = poltrona_mc_instance_1_p.initialize;
poltrona_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(poltrona_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.poltrona_mc_instance_1 = poltrona_mc_instance_1;
}(window));

