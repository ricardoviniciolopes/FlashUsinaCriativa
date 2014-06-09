package src_telas.itens_deskTop 
{
	import flash.geom.Rectangle;
	import src_assets.Assets;
	import src_telas.itens_deskTop.itens_menu_direito.EscolhePagina;
	import src_telas.itens_deskTop.itens_menu_direito.MiniPagina;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.TouchEvent;
	import starling.events.Touch;
	import starling.events.TouchPhase;
	import com.greensock.TweenLite;
	import com.greensock.easing.*;
	import starling.core.Starling;

	/**
	 * ...
	 * @author ...
	 */
	public class MenuDireito extends Sprite
	{
		private var fundo:Image;
		private var btn_show:Image;
		private var miniPagina:MiniPagina;
		private var escolhePagina:EscolhePagina;
		private var pagina:Vector.<Pagina>;
		public var criaPagina:Function;
		public var definePaginaAtual:Function;
		///////inicia valores e recebe a classe pagina da classe pai, e passa para o filho 
		public function MenuDireito(_pagina:Vector.<Pagina>,_criaPagina:Function,_definePaginaAtual:Function) 
		{
			criaPagina = _criaPagina;
			definePaginaAtual = _definePaginaAtual;
			pagina = _pagina;
			initValores();
			definePosicao();
		}
		
		private function definePosicao():void 
		{
			btn_show.y = 223;
			miniPagina.x = 65;
			miniPagina.y = 330;
			escolhePagina.x = 80;
			escolhePagina.y = 100;
		}
		// atribui os valores iniciais
		private function initValores():void 
		{
			fundo = new Image(Assets.getTexture("menu_direito_fundo") );
			btn_show = new Image(Assets.getTexture("menu_direito_btn_show") );
			miniPagina = new MiniPagina(pagina);
			escolhePagina = new EscolhePagina(pagina,criaPagina,definePaginaAtual);
			///
			addChild(fundo);
			addChild(btn_show);
			addChild(miniPagina);
			addChild(escolhePagina);
			escolhePagina.clipRect = new Rectangle(55-80, -70, 170, 600);
			fundo.alpha = 0.01;
			//
			btn_show.addEventListener(TouchEvent.TOUCH,showFundo);
		}
		
		// evento click para poder mostrar ou esconder o menu
		private function showFundo(e:TouchEvent):void 
		{
			var _toque:Touch = e.getTouch((e.currentTarget) as Image );
			if(_toque)
			{
				if(_toque.phase == TouchPhase.BEGAN) 
				{
					if (this.x == 1082) 
					{  
						TweenLite.to(this, .6, { x:1277 , ease:Back.easeInOut } ); 
						Starling.juggler.delayCall(function() {btn_show.alpha = 1; fundo.alpha = 0.01; }, .5);
						
					}
					else if (this.x == 1277) 
					{
						btn_show.alpha = 0.01;
						fundo.alpha = 1;
						TweenLite.to(this, .6, { x:1082 , ease:Back.easeInOut } ); 
					}
				}
			}
			
		}
		
	}

}