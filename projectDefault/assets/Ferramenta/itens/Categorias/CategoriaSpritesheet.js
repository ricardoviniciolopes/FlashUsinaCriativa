(function(window) {
Categorias_instance_1 = function() {
	this.initialize();
}
Categorias_instance_1._SpriteSheet = new SpriteSheet({images: ["CategoriaSpritesheet.png"], frames: [[0,0,58,58,0,28.5,28.5],[58,0,58,58,0,28.5,28.5],[0,58,58,58,0,28.5,28.5],[58,58,58,58,0,28.5,28.5],[0,116,58,58,0,28.5,28.5],[58,116,58,58,0,28.5,28.5],[0,174,58,58,0,28.5,28.5]]});
var Categorias_instance_1_p = Categorias_instance_1.prototype = new BitmapAnimation();
Categorias_instance_1_p.BitmapAnimation_initialize = Categorias_instance_1_p.initialize;
Categorias_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(Categorias_instance_1._SpriteSheet);
	this.paused = false;
}
window.Categorias_instance_1 = Categorias_instance_1;
}(window));

