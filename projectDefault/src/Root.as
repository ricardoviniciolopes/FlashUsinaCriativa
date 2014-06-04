package  
{
	import flash.display.Bitmap;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.textures.Texture;
	/**
	 * ...
	 * @author Léo Santana
	 */
	public class Root extends Sprite
	{
		private var controleGeral:ControleGeral;
		public function Root() 
		{
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		private function init(e:Event = null):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			//inicie aqui.........
			controleGeral = new ControleGeral();
			addChild(controleGeral);
		}
	}

}