package src_telas 
{
	import scr_objetos.Item;
	import src_assets.Assets;
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	/**
	 * ...
	 * @author ...
	 */
	public class TelaNovo extends Sprite
	{
		private var fundo_telaNovo:Image;
		private var btn_charge:Button;
		private var btn_tira:Button;
		private var btn_gibi:Button;
		//------------------------
		private var criaGibi:Function;
		private var criaTira:Function;
		private var criaCharge:Function;
		
		public function TelaNovo(_criaGibi:Function,_criaTira:Function,_criaCharge:Function) 
		{
			criaGibi = _criaGibi;
			criaTira = _criaTira;
			criaCharge = _criaCharge;
			//----------
			initValores();
			definePosicao();
			var teste:Item = new Item();
			addChild(teste);
			teste.x = 200;
			teste.y = 200;
		}
		
		private function initValores():void 
		{
			fundo_telaNovo = new Image(Assets.getTexture("tela_novo_fundo_novo"));
			btn_charge = new Button(Assets.getTexture("tela_novo_btn_charge"), "", Assets.getTexture("tela_novo_btn_charge_over"));
			btn_tira = new Button(Assets.getTexture("tela_novo_btn_tira"), "", Assets.getTexture("tela_novo_btn_tira_over"));
			btn_gibi = new Button(Assets.getTexture("tela_novo_btn_quadrinho"), "", Assets.getTexture("tela_novo_btn_quadrinho_over"));
			////-------------------
			addChild(fundo_telaNovo);
			addChild(btn_charge);
			addChild(btn_tira);
			addChild(btn_gibi);
		}
		//--define as posições e adiciona respectivos eventos
		private function definePosicao():void 
		{
			btn_charge.x = 220; /*-*/ btn_charge.y = 280;
			btn_tira.x = 440; /*---*/ btn_tira.y = 280;
			btn_gibi.x = 660; /*---*/ btn_gibi.y = 280;
			//--------------adicionando eventos-------
			btn_gibi.addEventListener(Event.TRIGGERED, criaGibi);
			btn_tira.addEventListener(Event.TRIGGERED, criaTira);
			btn_charge.addEventListener(Event.TRIGGERED,criaCharge);
		}
		
	}

}