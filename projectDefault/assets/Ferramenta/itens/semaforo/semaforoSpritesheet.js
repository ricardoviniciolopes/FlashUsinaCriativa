(function(window) {
semaforo_mc_instance_1 = function() {
	this.initialize();
}
semaforo_mc_instance_1._SpriteSheet = new SpriteSheet({images: ["semaforoSpritesheet.png"], frames: [[0,0,141,431,0,56.1,214.85]]});
var semaforo_mc_instance_1_p = semaforo_mc_instance_1.prototype = new BitmapAnimation();
semaforo_mc_instance_1_p.BitmapAnimation_initialize = semaforo_mc_instance_1_p.initialize;
semaforo_mc_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(semaforo_mc_instance_1._SpriteSheet);
	this.paused = false;
}
window.semaforo_mc_instance_1 = semaforo_mc_instance_1;
}(window));

