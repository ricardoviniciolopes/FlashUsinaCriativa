package src_telas.itens_deskTop.itens_menu_direito 
{
	import src_assets.Assets;
	import src_telas.DeskTop;
	import src_telas.itens_deskTop.Pagina;
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	import starling.events.Touch;
	/**
	 * ...
	 * @author ...
	 */
	public class MiniPagina extends Sprite
	{
		private var fundoPagina:Image;
		private var quadros:Vector.<Image>;
		private var pagina:Vector.<Pagina>;
		private var arrayPos:Array = new Array( [5, 5], [5, 62], [98, 62], [5, 121], [59, 121], [59, 164] );
		
		public function MiniPagina(_pagina:Vector.<Pagina>) 
		{
			pagina = _pagina;
			initValores();
			DeskTop.zeraQuadroSelecionado = mudaParaQuadroInicial;
		}
		
		private function initValores():void 
		{
			fundoPagina = new Image(Assets.getTexture("mini_pagina_fundo") );
			quadros = new Vector.<Image>;
			addChild(fundoPagina);
			//------------cria os mini quadros e ajusta suas posições
			for (var i:int = 0; i < ControleGeral.quantidadeQuadros; i++ )
			{
				quadros[i] = new Image(Assets.getTexture("mini_pagina_quadro_" + i) );
				quadros[i].name = "" + i;
				quadros[i].x = arrayPos[i][0];
				quadros[i].y = arrayPos[i][1];
				quadros[i].alpha = 0.2;
				quadros[i].addEventListener(TouchEvent.TOUCH,selecionaQuadro);
				addChild(quadros[i]);
			}
		}
		/*todos os quadros estao em cena, essa função apenas muda qual quadro ira aparecer
		 * ela pega a função da classe pagina que faz a mudança do alpha de cada quadro*/
		public function selecionaQuadro(e:TouchEvent):void 
		{
			var toque:Touch =  e.getTouch((e.currentTarget) as Image );
			if (toque)
			{
				if (toque.phase == TouchPhase.BEGAN) 
				{
					var current:Number =0 ;
					for (var q:int = 0; q < quadros.length; q++ )
					{
						quadros[q].alpha = 0.2;
						if (quadros[q].name == Image(e.currentTarget).name) { current = q; }
					}
					Image(e.currentTarget).alpha = 1;
					ControleGeral.currentQuadro = current;
					pagina[ControleGeral.currentPagina].mudaQuadro(ControleGeral.currentQuadro);
				}
			}
		}
		
		public function mudaParaQuadroInicial():void
		{
			for (var q:int = 0; q < quadros.length; q++ )
			{
				quadros[q].alpha = 0.2;
			}
			ControleGeral.currentQuadro = 0;
			pagina[ControleGeral.currentPagina].mudaQuadro(0);
			quadros[0].alpha =1;
		}
		
	}

}