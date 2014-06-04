package src_telas 
{
	import src_assets.Assets;
	import starling.display.Image;
	import starling.display.Sprite;
	/**
	 * ...
	 * @author ...
	 */
	public class TelaRascunho extends Sprite
	{
		private var fundo_rascunho:Image;
		
		public function TelaRascunho() 
		{
			initValores();
		}
		
		private function initValores():void 
		{
			fundo_rascunho = new Image(Assets.getTexture("rascunhos_fundo"));
			///
			addChild(fundo_rascunho);
		}
		
	}

}