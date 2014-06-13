package src_telas 
{
	import src_assets.Assets;
	import src_telas.itens_deskTop.Itens_menu_esquerdo.PopupFundos;
	import src_telas.itens_deskTop.MenuDireito;
	import src_telas.itens_deskTop.MenuEsquerdo;
	import src_telas.itens_deskTop.Pagina;
	import starling.display.Image;
	import starling.display.Sprite;
	/**
	 * ...
	 * @author ...
	 */
	public class DeskTop extends Sprite
	{
		private var fundo:Image;
		private var menuDireito:MenuDireito;
		private var menuEsquerdo:MenuEsquerdo;
		public var pagina:Vector.<Pagina>;
		public static var zeraQuadroSelecionado:Function;
		//////
		
		public function DeskTop() 
		{
			this.name = "DESKTOP";
			initValores();
			defineValores();
		}
		
		private function initValores():void 
		{
			pagina = new Vector.<Pagina>;
			fundo = new Image(Assets.getTexture("deskTop_fundo"));
			addChild(fundo);
			/////
			menuEsquerdo = new MenuEsquerdo(pagina);
			menuDireito = new MenuDireito(pagina,criaPagina,definePaginaAtual);
			
			addChild(menuEsquerdo);
			addChild(menuDireito);
			
			
		}
		// muda qual pagina que esta na frente , que esta sendo exibida
		public function definePaginaAtual():void
		{
			
			for (var a:int = 0; a < pagina.length; a++ )
			{
				pagina[a].alpha = 0;
			}
			pagina[ControleGeral.currentPagina].alpha = 1;
			setChildIndex(pagina[ControleGeral.currentPagina], numChildren - 2);
			setChildIndex(menuDireito, numChildren - 1);
			setChildIndex(menuEsquerdo, numChildren - 1);
			zeraQuadroSelecionado();
			
		}
		
		//cria uma nova pagina no array de paginas
		public function criaPagina():void
		{
			pagina.push(new Pagina());
			addChild(pagina[pagina.length - 1]);
			///
			for (var i:int = 0; i < pagina.length;i++ )
			{
				pagina[i].alpha = 0;
			}
			pagina[pagina.length - 1].alpha = 1;
			
			if(menuEsquerdo){setChildIndex(menuEsquerdo, this.numChildren - 1);}
			if(menuDireito){setChildIndex(menuDireito, this.numChildren - 2);}
		}
		
		private function defineValores():void
		{
			menuEsquerdo.x = 25; /**/ menuEsquerdo.y = 100;
			menuDireito.x = 1277; /**/ menuDireito.y = 100;
		}
		
	}

}