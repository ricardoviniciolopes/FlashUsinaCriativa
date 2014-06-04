package src_telas.itens_deskTop 
{
	import flash.geom.Rectangle;
	import src_assets.Assets;
	import starling.core.RenderSupport;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.core.Starling;
	/**
	 * ...
	 * @author ...
	 */
	public class Pagina extends Sprite
	{
		private var quantosQuadros:int;
		public var quadro:Vector.<Quadro>;
		public function Pagina() 
		{
			quantosQuadros = 6;
			initValores();
		}
		
		private function initValores():void 
		{
			quadro = new Vector.<Quadro>;
			
			for (var i:int = 0; i < quantosQuadros;i++ )
			{
				quadro[i] = new Quadro();
				addChild(quadro[i]);
			}
			mudaQuadro(0);
			this.clipRect = new Rectangle(120, 100, 850, 572);
		}
		
		public function mudaQuadro(_num:Number):void 
		{
			for (var a:int = 0; a < quadro.length;a++ )
			{
				quadro[a].alpha = 0;
			}
			quadro[_num].alpha = 1;
		}
		
	}

}