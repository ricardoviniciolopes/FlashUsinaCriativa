package src_telas.itens_deskTop 
{
	import src_assets.Assets;
	import starling.display.Image;
	import starling.display.Sprite;
	/**
	 * ...
	 * @author ...
	 */
	public class Quadro extends Sprite
	{
		private var fundoQuadro:Image;
		
		public function Quadro() 
		{
			initValores();
		}
		
		private function initValores():void 
		{
			fundoQuadro = new Image(Assets.getTexture("fundo_cinza"));
			addChild(fundoQuadro);
		}
		
	}

}