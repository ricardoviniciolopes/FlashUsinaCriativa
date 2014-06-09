package src_telas.itens_deskTop 
{
	import flash.geom.Rectangle;
	import src_assets.Assets;
	import starling.core.RenderSupport;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.core.Starling;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
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
			this.clipRect = new Rectangle(120,100,1150,572);
		}
		
		public function mudaQuadro(_num:Number):void 
		{
			for (var a:int = 0; a < quadro.length;a++ )
			{
				quadro[a].alpha = 0;
			}
			quadro[_num].alpha = 1;
			setChildIndex(quadro[_num], (numChildren -1) );
		}
		
	}

}