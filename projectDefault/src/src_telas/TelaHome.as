package src_telas 
{
	import flash.events.TextEvent;
	import src_assets.Assets;
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.text.TextFieldAutoSize;
	
	/**
	 * ...
	 * @author ...
	 */
	public class TelaHome extends Sprite
	{
		private var home_bg:Image;
		private var btn_novo:Button;
		private var btn_rascunho:Button;
		private var loadTelaNovo:Function;
		private var loadTelaRascunho:Function;
		
		public function TelaHome(_loadTelaNovo:Function,_loadTelaRascunhos:Function) 
		{
			loadTelaNovo = _loadTelaNovo;
			loadTelaRascunho = _loadTelaRascunhos;
			initValores();
			definePosicao();
			
			
		}
		// atribui valores 
		private function initValores():void 
		{
			home_bg = new Image(Assets.getTexture("fundo_home"));
			btn_novo = new Button(Assets.getTexture("btn_novo"), "", Assets.getTexture("btn_novo_over"));
			btn_novo.name = "novo";
			////////////
			btn_rascunho = new Button(Assets.getTexture("btn_rascunho"), "", Assets.getTexture("btn_rascunho_over"));
			btn_rascunho.name = "rascunho";
			//add filhos
			addChild(home_bg);
			addChild(btn_novo);
			addChild(btn_rascunho);
		}
		//  define a posicao dos objetos
		private function definePosicao():void
		{
			var Xbg:Number = home_bg.width / 5;
			var Ybg:Number = home_bg.height / 3;
			//---------
			btn_novo.x = Xbg; /**/ btn_rascunho.x = Xbg * 3;
			btn_novo.y = Ybg; /**/ btn_rascunho.y = Ybg;
			//---------
			btn_novo.addEventListener(Event.TRIGGERED, eventoClick);
			btn_rascunho.addEventListener(Event.TRIGGERED,eventoClick);
		}
		//evento de botoes
		private function eventoClick(e:Event):void
		{
			switch(Button(e.currentTarget).name)
			{
				case("novo"):
					loadTelaNovo();
				break;
				
				case("rascunho"):
					loadTelaRascunho();
				break;
			}
		}
		
	}

}