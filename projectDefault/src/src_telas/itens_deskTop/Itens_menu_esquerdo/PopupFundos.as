package src_telas.itens_deskTop.Itens_menu_esquerdo 
{
	import src_assets.Assets;
	import src_telas.itens_deskTop.Pagina;
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import com.greensock.TweenLite;
	import com.greensock.easing.*;
	import starling.core.Starling;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	/**
	 * ...
	 * @author ...
	 */
	public class PopupFundos extends Sprite
	{
		private var fundo:Image;
		private var btn_setaD:Button;
		private var btn_setaE:Button;
		private var quadro:Vector.<Image>;
		private var thumb:Vector.<Image>;
		public var pagina:Vector.<Pagina>;
		
		public function PopupFundos(_pagina:Vector.<Pagina>) 
		{
			pagina = _pagina;
			initValores();
			definePosicao();
		}
		
		private function definePosicao():void 
		{
			btn_setaD.x = 550;
			btn_setaE.x = 10;
		}
		
		private function initValores():void 
		{
			fundo = new Image(Assets.getTexture("popup_fundo_bg") );
			btn_setaD = new Button(Assets.getTexture("barra_popup_setaD"), "");
			btn_setaD.name = "d";
			btn_setaE = new Button(Assets.getTexture("barra_popup_setaE"), "");
			btn_setaE.name = "e";
			quadro = new Vector.<Image>;
			thumb = new Vector.<Image>;
			addChild(fundo);
		
			///
			btn_setaD.addEventListener(Event.TRIGGERED, moveQuadros);
			btn_setaE.addEventListener(Event.TRIGGERED, moveQuadros);
			var contagem:int = 0;
			///
			for (var q:int = 0; q < 11;q++ )
			{
				quadro[q] = new Image(Assets.getTexture("popup_fundo_quadro"));
				thumb[q] = new Image(Assets.getTexture("tf" + q));
				thumb[q].scaleX = .9; /**/ thumb[q].scaleY = .9;
				thumb[q].name =""+ q;
				quadro[q].x = 70 + (80 * q); /*--*/ quadro[q].y = 5;
				thumb[q].x = quadro[q].x+5; /*-----*/ thumb[q].y = quadro[q].y+5;
				
				thumb[q].addEventListener(TouchEvent.TOUCH, adicionaFundo);
				
				if ( (quadro[q].x < 70) || (quadro[q].x > 470) )
				{ 
					quadro[q].alpha = 0; 
					thumb[q].alpha = 0; 
				}
				addChild(quadro[q]);
				addChild(thumb[q]);
			}	
			addChild(btn_setaD);
			addChild(btn_setaE);
		}
		// ao clicar no botao com imagem adiciona um fundo correspondente
		private function adicionaFundo(e:TouchEvent):void 
		{
			var _toque:Touch = e.getTouch((e.currentTarget) as Image );
			if(_toque)
			{
				if(_toque.phase == TouchPhase.BEGAN) 
				{
					var imagem:Image = new Image(Assets.getTexture("f" + Image(e.currentTarget).name));
					pagina[ControleGeral.currentPagina].quadro[ControleGeral.currentQuadro].removeChildAt(0);
					pagina[ControleGeral.currentPagina].quadro[ControleGeral.currentQuadro].addChild(imagem);
					pagina[ControleGeral.currentPagina].quadro[ControleGeral.currentQuadro].setChildIndex(imagem, 0);
				}
			}
		}

		
		
		private function moveQuadros(e:Event):void 
		{
			switch(Button(e.currentTarget).name)
			{
				case("e"):
					for (var l:int = 0; l < quadro.length;l++ )
					{
						if (quadro[0].x<70)
						{
							var posFutura:Number= quadro[l].x + 80;
							if ( (posFutura < 70) || (posFutura > 470) )
							{ 
								TweenLite.to(quadro[l], .05, { alpha:0 } );
								TweenLite.to(thumb[l],.05,{alpha:0});
							}
							else
							{ 
								TweenLite.to(quadro[l], .1, { alpha:1 } ); 
								TweenLite.to(thumb[l], .1, { alpha:1 } ); 
							}
							TweenLite.to(quadro[l], .1, { x:quadro[l].x + 80 } );
							TweenLite.to(thumb[l], .1, { x:thumb[l].x + 80 } );
						}
					}
					
				break;
				///
				case("d"):
					for (var d:int = 0; d < quadro.length;d++ )
					{
						if (quadro[quadro.length-1].x>470)
						{
							var posFutura:Number= quadro[d].x - 80;
							if ( (posFutura < 70) || (posFutura > 470) )
							{ 
								TweenLite.to(quadro[d], .05, { alpha:0 } );
								TweenLite.to(thumb[d],.05,{alpha:0});
							}
							else 
							{ 
								TweenLite.to(quadro[d], .1, { alpha:1 } ); 
								TweenLite.to(thumb[d], .1, { alpha:1 } ); 
							}
							TweenLite.to(quadro[d], .1, { x:quadro[d].x - 80 } );
							TweenLite.to(thumb[d], .1, { x:thumb[d].x - 80 } );
						}
					}
				break;
			}
		}
		//TweenLite.to(Button(e.currentTarget),.8,{x:Button(e.currentTarget).x+80});
		
	}

}