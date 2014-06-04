package  
{
	import src_assets.Assets;
	import src_telas.DeskTop;
	import src_telas.TelaHome;
	import src_telas.TelaNovo;
	import src_telas.TelaRascunho;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.textures.Texture;
	/**
	 * ...
	 * @author ...
	 */
	public class ControleGeral extends Sprite
	{
		public var telaHome:TelaHome;
		public var telaRascunho:TelaRascunho;
		public var telaNovo:TelaNovo;
		public var deskTop:DeskTop;
		//////
		public static var currentQuadro:Number;
		public static var currentPagina:Number;
		public static var quantidadeQuadros:Number;
		
		
		
		
		public function ControleGeral() 
		{
			initValoresEstaticas();
			initValores();
		}
		
		private function initValoresEstaticas():void 
		{
			currentPagina = 0;
			currentQuadro = 0;
		}
		
		private function initValores():void
		{
			telaHome = new TelaHome(loadTelaNovo, loadTelaRascunho);
			telaRascunho = new TelaRascunho();
			telaNovo = new TelaNovo(criaGibi, criaTira, criaCharge);
			initHome();
		}
		//inicia tela principal 
		public function initHome():void
		{
			if (telaHome)
			{
				removeChild(telaHome);
			}
			addChild(telaHome);
		}
		//inicia quadrinho 
		public function initQuadrinho():void
		{
			if (telaNovo)
			{
				removeChild(telaNovo);
			}
			addChild(telaNovo);
		}
		//=====================
		//cria tela de trabalho com varios quadros
		public function criaGibi():void
		{
			quantidadeQuadros = 6;
			removeChild(telaNovo);
			deskTop = new DeskTop();
			addChild(deskTop);
		}
		//cria tela de trabalho com 3 quadros
		public function criaTira():void
		{
			quantidadeQuadros = 3;
			removeChild(telaNovo);
			deskTop = new DeskTop();
			addChild(deskTop);
		}
		// cria tela de trabalho com um quadro
		public function criaCharge():void
		{
			quantidadeQuadros = 1;
			removeChild(telaNovo);
			deskTop = new DeskTop();
			addChild(deskTop);
		}
		//======================
		//carrega a tela de escolha de novo quadrinho
		public function loadTelaNovo():void
		{
			resetTelas();
			addChild(telaNovo);
		}
		// carrega a tela de escolha de rascunhos para editar
		public function loadTelaRascunho():void
		{
			resetTelas();
			addChild(telaRascunho);
		}
		//
		public function resetTelas():void
		{
			while (this.numChildren>0)
			{
				this.removeChildAt(0);
			}
			initValores();
		}
	}
}