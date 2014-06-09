package src_telas.itens_deskTop 
{
	import flash.printing.PrintJob;
	import src_assets.Assets;
	import src_telas.itens_deskTop.Itens_menu_esquerdo.PopupBalao;
	import src_telas.itens_deskTop.Itens_menu_esquerdo.PopupEfeito;
	import src_telas.itens_deskTop.Itens_menu_esquerdo.PopupFundos;
	import src_telas.itens_deskTop.Itens_menu_esquerdo.PopupItem;
	import src_telas.itens_deskTop.Itens_menu_esquerdo.PopupPersonagem;
	import starling.display.Button;
	import starling.display.DisplayObjectContainer;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	/**
	 * ...
	 * @author ...
	 */
	public class MenuEsquerdo extends Sprite
	{
		private var fundoMenu:Image;
		private var chaveOn:Button;
		private var chaveOf:Button;
		////
		private var popupFundos:PopupFundos;
		private var popupItem:PopupItem;
		private var popupPersonagem:PopupPersonagem;
		private var popupBalao:PopupBalao;
		private var popupEfeito:PopupEfeito;
		////////
		private var btn_personagem:Button; 	/*------*/ private var btn_copiar:Button;
		private var btn_fundo:Button;		/*------*/ private var btn_colar:Button;
		private var btn_item:Button;        /*------*/ private var btn_recortar:Button;
		private var btn_balao:Button;       /*------*/ private var btn_desfazer:Button;
		private var btn_acao:Button;        /*------*/ private var btn_apagar:Button;
		//////
		public var OnChave:Boolean;
		private var posX_btn:int;
		///
		public var pagina:Vector.<Pagina>;
		
		
		public function MenuEsquerdo(_pagina:Vector.<Pagina>) 
		{
			pagina = _pagina;
			initValores();
			definePos();
		}
		//
		private function initValores():void 
		{
			OnChave = false;
			posX_btn = 12;
			//popups
			popupFundos = new PopupFundos(pagina);
			popupItem = new PopupItem(pagina);
			popupPersonagem = new PopupPersonagem();
			popupBalao = new PopupBalao(pagina);
			popupEfeito = new PopupEfeito();
			//
			chaveOf = new Button(Assets.getTexture("btn_chave_of"), "");
			chaveOn = new Button(Assets.getTexture("btn_chave_on"), "");
			
			fundoMenu = new Image(Assets.getTexture("barra_icone"));
			btn_personagem = new Button(Assets.getTexture("escolha_btn_personagem"), "", Assets.getTexture("escolha_btn_personagem_over"));
			btn_personagem.useHandCursor = true;
			btn_fundo = new Button(Assets.getTexture("escolha_btn_fundo"), "", Assets.getTexture("escolha_btn_fundo_over"));
			btn_item = new Button(Assets.getTexture("escolha_btn_item"), "", Assets.getTexture("escolha_btn_item_over"));
			btn_balao = new Button(Assets.getTexture("escolha_btn_balao"), "", Assets.getTexture("escolha_btn_balao_over"));
			btn_acao = new Button(Assets.getTexture("escolha_btn_acao"), "", Assets.getTexture("escolha_btn_acao_over"));
			//----
			btn_copiar = new Button(Assets.getTexture("escolha_btn_copiar"), "", Assets.getTexture("escolha_btn_copiar_over"));
			btn_colar = new Button(Assets.getTexture("escolha_btn_colar"), "", Assets.getTexture("escolha_btn_colar_over"));
			btn_recortar = new Button(Assets.getTexture("escolha_btn_recortar"), "", Assets.getTexture("escolha_btn_recortar_over"));
			btn_desfazer = new Button(Assets.getTexture("escolha_btn_desfazer"), "", Assets.getTexture("escolha_btn_desfazer_over"));
			btn_apagar = new Button(Assets.getTexture("escolha_btn_deletar"), "", Assets.getTexture("escolha_btn_deletar_over"));
			//----adicionando filhos
			addChild(fundoMenu);
			addChild(btn_personagem);
			addChild(btn_fundo);
			addChild(btn_item);
			addChild(btn_balao);
			addChild(btn_acao);
			addChild(chaveOf); /**/ addChild(chaveOn);
			////add evento
			chaveOn.addEventListener(Event.TRIGGERED, eventoChave);
			btn_personagem.addEventListener(Event.TRIGGERED,criaPopupPersonagem);
			btn_fundo.addEventListener(Event.TRIGGERED, criaPopupFundo);
			btn_item.addEventListener(Event.TRIGGERED, criaPopupItem);
			btn_balao.addEventListener(Event.TRIGGERED, criaPopupBalao);
			btn_acao.addEventListener(Event.TRIGGERED, criaPopupEfeito);
		}
		/// cria barra para escolha do fundo
		function criaPopupPersonagem(e:Event):void
		{
			removePopup();
			addChild(popupPersonagem);
		}
		////cria barra para escolha do fundo
		function criaPopupFundo(e:Event):void
		{
			removePopup();
			addChild(popupFundos);
		}
		////cria barra para escolha do item
		function criaPopupItem(e:Event):void
		{
			removePopup();
			addChild(popupItem);
		}
		////cria barra para escolha do Balao
		function criaPopupBalao(e:Event):void
		{
			removePopup();
			addChild(popupBalao);
			trace
			(
				ControleGeral.nomeDoItem+" Nome "+ControleGeral.rotacaoDoItem+" X "+ControleGeral.scalexDoItem+" Y "+ControleGeral.scaleyDoItem
			);
		}
		////cria barra para escolha do Efeito
		function criaPopupEfeito(e:Event):void
		{
			removePopup();
			addChild(popupEfeito);
		}
		///REMOVE TODOS OS POPUPS QUE ESTIVEREM EM SENA
		function removePopup():void
		{
			if (popupPersonagem) { removeChild(popupPersonagem); }
			if (popupFundos) { removeChild(popupFundos); }
			if (popupItem) { removeChild(popupItem); }
			if (popupBalao) { removeChild(popupBalao); }
			if (popupEfeito) { removeChild(popupEfeito); }
		}
		
		// evento que muda barra entre btn criacao , btn edicao
		private function eventoChave(e:Event):void 
		{
			switch(OnChave)
			{
				case(false): exibeBarraEdicao();/*---*/ OnChave = true; removePopup();  break;
				////
				case(true): exibeBarraCriacao();/*---*/ OnChave = false; removePopup();  break;
			}
		}
		//remove botoes barra edicao e adiciona botoes barra criacao
		public function exibeBarraCriacao():void 
		{
			removeChild(btn_copiar); /**/ removeChild(btn_colar); /**/ removeChild(btn_recortar); /**/ removeChild(btn_desfazer); /**/ removeChild(btn_apagar);
			addChild(btn_personagem); /**/ addChild(btn_fundo); /**/ addChild(btn_item); /**/ addChild(btn_balao); /**/ addChild(btn_acao);
		}
		//remove botoes barra criacao e adiciona botoes barra edicao
		public function exibeBarraEdicao():void 
		{
			addChild(btn_copiar); /**/ addChild(btn_colar); /**/ addChild(btn_recortar); /**/ addChild(btn_desfazer); /**/ addChild(btn_apagar);
			removeChild(btn_personagem); /**/ removeChild(btn_fundo); /**/ removeChild(btn_item); /**/ removeChild(btn_balao); /**/ removeChild(btn_acao);
		}
		
		//---difine a posição dos botoes
		private function definePos():void 
		{
			popupPersonagem.x = 180; /**/ popupPersonagem.y = 520;
			popupFundos.x = 180; /**/ popupFundos.y = 520;
			popupItem.x = 180; /**/ popupItem.y = 520;
			popupBalao.x = 180; /**/ popupBalao.y = 520;
			popupEfeito.x = 180; /**/ popupEfeito.y = 520;
			chaveOn.x = 5; /**/ chaveOf.x = 5;
			chaveOf.alpha = 0;
			var d_y:int = 100;
			btn_personagem.x = posX_btn; /*====*/ btn_personagem.y = d_y; /*|||||||||||||*/ btn_copiar.x = posX_btn; /*====*/ btn_copiar.y = d_y;
			btn_fundo.x = posX_btn; /*====*/ btn_fundo.y = d_y +( 70 * 1);/*|||||||||||||*/ btn_colar.x = posX_btn; /*====*/ btn_colar.y = d_y +( 70 * 1);
			btn_item.x = posX_btn; /*====*/ btn_item.y = d_y + (70 * 2);  /*|||||||||||||*/ btn_recortar.x = posX_btn; /*====*/ btn_recortar.y = d_y + (70 * 2);
			btn_balao.x = posX_btn; /*====*/ btn_balao.y = d_y + (70 * 3);/*|||||||||||||*/ btn_desfazer.x = posX_btn; /*====*/ btn_desfazer.y = d_y + (70 * 3);
			btn_acao.x = posX_btn; /*====*/ btn_acao.y = d_y + (70 * 4);  /*|||||||||||||*/ btn_apagar.x = posX_btn; /*====*/ btn_apagar.y = d_y + (70 * 4);
			
		}
	}

}