package src_telas.itens_deskTop.itens_menu_direito 
{
	import flash.geom.Rectangle;
	import src_assets.Assets;
	import src_telas.itens_deskTop.Pagina;
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import com.greensock.TweenLite;
	import com.greensock.easing.*;
	import starling.events.Event;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	import com.greensock.easing.*;
	import com.greensock.TweenLite;
	import starling.core.Starling;
	/**
	 * ...
	 * @author ...
	 */
	public class EscolhePagina extends Sprite
	{
		private var modeloPagina:Vector.<Image>;
		private var btn_add:Button;
		private var btn_remove:Button;
		private var btn_setaD:Button;
		private var btn_setaE:Button;
		private var pagina:Vector.<Pagina>;
		public var criaPagina:Function;
		public var definePaginaAtual:Function;
		
		public function EscolhePagina(_pagina:Vector.<Pagina>,_criaPagina:Function,_definePaginaAtual:Function) 
		{
			
			criaPagina = _criaPagina;
			definePaginaAtual = _definePaginaAtual;
			pagina = _pagina;
			addValores();
			defineposicao();
		}
		//apenas inicia os valores
		private function addValores():void 
		{
			modeloPagina = new Vector.<Image>;
			btn_setaD = new Button(Assets.getTexture("menu_direito_btn_setaD"), "");
			btn_setaE = new Button(Assets.getTexture("menu_direito_btn_setaE"), "");
			/////////////////////////////////////
			btn_add = new Button(Assets.getTexture("menu_direito_btn_addPagina"), "",Assets.getTexture("menu_direito_btn_addPagina_over") );
			btn_remove = new Button(Assets.getTexture("menu_direito_btn_removePagina"), "", Assets.getTexture("menu_direito_btn_removePagina_over") );
			// adicionando eventos
			btn_add.addEventListener(Event.TRIGGERED, criaNovaPagina);
			btn_remove.addEventListener(Event.TRIGGERED,removePagina);
			addChild(btn_add); /*--*/ addChild(btn_remove);
			addChild(btn_setaD); /*--*/ addChild(btn_setaE);
			
		}
		
		private function removePagina(e:Event):void 
		{
			trace("O TAMANHO NO INICIO: "+modeloPagina.length);
			if((modeloPagina.length - 1)>0) 
			{
				removeChild(modeloPagina[modeloPagina.length - 1]);
				modeloPagina.splice( (modeloPagina.length - 1), 1);
				if (modeloPagina[modeloPagina.length - 1].x == ( -130)) {puxaParaFrente(); }
				
			}
			trace("O TAMANHO NO fim: "+modeloPagina.length);
		}
		////
		private function defineposicao():void
		{
			btn_setaE.x = 0; /*===*/ btn_setaD.x = 110;
			btn_setaE.y = -60; /*===*/ btn_setaD.y = -60;
			btn_setaE.name = "E"; /*===*/ btn_setaD.name = "D"; 
			
			btn_setaE.addEventListener(Event.TRIGGERED, mudaPosicao);
			btn_setaD.addEventListener(Event.TRIGGERED,mudaPosicao);
			/////////////////////////////////////////////
			btn_add.y = 150; /*==*/ btn_remove.y = 150;
			btn_add.x = 50-80; /*===*/ btn_remove.x = 150-80;
			
		}
		//cria uma nova miniatura de pagina representando a pagina atual
		public function criaNovaPagina(e:Event):void
		{
			trace(this.parent.parent);
			btn_add.removeEventListener(Event.TRIGGERED, criaNovaPagina);
			modeloPagina.push(new Image(Assets.getTexture("menu_direito_pagina") ) );
			addChild(modeloPagina[modeloPagina.length - 1]);  /*adiciona um novo item no vector*/
			modeloPagina[modeloPagina.length - 1].y = -20;  /*define posicao padrão Y*/
			modeloPagina[modeloPagina.length - 1].name = "" + (modeloPagina.length - 1);  /*define um nome pra cara indice*/
			
			/* se imagem atual estiver no seu array em um indice maior que um, ela pega como referencia a posição X do item anterior a ele 
			* no indice do array somama  a sua posicao, e adiciona mais 10 pixels*/
			if ((modeloPagina.length - 1) != 0) 
			{ 
				modeloPagina[modeloPagina.length - 1].x = (modeloPagina[modeloPagina.length - 2].x) + 130;
				puxaParaTras();
			}
			criaPagina();
			Starling.juggler.delayCall(function():void
			{
				btn_add.addEventListener(Event.TRIGGERED, criaNovaPagina);
			},.5);
			//modeloPagina[modeloPagina.length - 1].addEventListener(TouchEvent.TOUCH, arrasto);
		}
		//
		private function mudaPosicao(e:Event):void
		{
			switch(Button(e.currentTarget).name)
			{
				case("D"):
					if ( (modeloPagina[modeloPagina.length-1].x>0)&&(modeloPagina.length>1))
					{
						btn_setaE.removeEventListener(Event.TRIGGERED, mudaPosicao);
						btn_setaD.removeEventListener(Event.TRIGGERED, mudaPosicao);
						//ControleGeral.currentPagina = ControleGeral.currentPagina-1;
						puxaParaTras();
					}
				break;
				//
				case("E"):
					if ( (modeloPagina[0].x<0)&&(modeloPagina.length>1))
					{
						btn_setaE.removeEventListener(Event.TRIGGERED, mudaPosicao);
						btn_setaD.removeEventListener(Event.TRIGGERED, mudaPosicao);
						//ControleGeral.currentPagina = ControleGeral.currentPagina+1;
						puxaParaFrente();
					}
				break;
			}
			
		}
		
		//move todas as mini paginas para a esquerda
		private function puxaParaTras():void
		{
			for (var i:int = 0; i < modeloPagina.length; i++ ) 
			{
				TweenLite.to(modeloPagina[i], .2, { x:modeloPagina[i].x - 130 } );
				Starling.juggler.delayCall(function():void
				{
					defineQualPagina(); 
					btn_setaE.addEventListener(Event.TRIGGERED, mudaPosicao);
					btn_setaD.addEventListener(Event.TRIGGERED,mudaPosicao);
				}, .3);
			}
		}
		
		//move todas as mini paginas para a direita
		private function puxaParaFrente():void
		{
			for (var i:int = 0; i < modeloPagina.length; i++ ) 
			{
				TweenLite.to(modeloPagina[i], .2, { x:modeloPagina[i].x + 130 } );
				Starling.juggler.delayCall(function():void
				{
					defineQualPagina(); 
					btn_setaE.addEventListener(Event.TRIGGERED, mudaPosicao);
					btn_setaD.addEventListener(Event.TRIGGERED,mudaPosicao);
				}, .3);
			}
		}
		
		// ve qual pagina esta na posição zero e passa essa informação para uma variavel de controle global
		private function defineQualPagina():void 
		{
			var current:Number = 0;
			for (var c:Number = 0; c < modeloPagina.length; c++ )
			{
				if (modeloPagina[c].x == 0) 
				{ 
					current = c; 
					ControleGeral.currentPagina = current;
					trace("A PAGINA: " + ControleGeral.currentPagina);
					definePaginaAtual();
				}
			}
		}
		
		// função de arrasto da imagem da pagina no eixo x
		private function arrasto(e:TouchEvent):void
		{
			var _toque:Touch = e.getTouch((e.currentTarget) as Image );
			if(_toque)
			{
				if(_toque.phase == TouchPhase.MOVED) 
				{
					Image(e.currentTarget).x =_toque.globalX-850;	
				}
			}
		}
	}

}



