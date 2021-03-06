package src_telas.itens_deskTop.Itens_menu_esquerdo 
{
	import com.greensock.TweenLite;
	import scr_objetos.ImagemItem;
	import scr_objetos.Item;
	import src_assets.Assets;
	import src_telas.itens_deskTop.Pagina;
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.core.Starling;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	import com.greensock.easing.*;
	/**
	 * ...
	 * @author ...
	 */
	public class PopupItem extends Sprite
	{
		private var fundo:Image;
		private var btn_setaD:Button;
		private var btn_setaE:Button;
		private var quadro:Vector.<Image>;
		private var thumb:Vector.<Image>;
		private var pagina:Vector.<Pagina>;
		
		
		public function PopupItem(_pagina:Vector.<Pagina>) 
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
			fundo = new Image(Assets.getTexture("popup_item_bg") );
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
			for (var q:int = 0; q <32;q++ )
			{
				trace("Q "+q);
				quadro[q] = new Image(Assets.getTexture("popup_item_quadro"));
				thumb[q] = new Image(Assets.getTexture("ti"+q));
				thumb[q].scaleX = .9; /**/ thumb[q].scaleY = .9;
				quadro[q].x = 70 + (80 * q); /*--*/ quadro[q].y = 5;
				thumb[q].name = "" + q;
				thumb[q].x = quadro[q].x+5; /*-----*/ thumb[q].y = quadro[q].y+5;
				thumb[q].addEventListener(TouchEvent.TOUCH,adicionaItem);
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
		
		private function adicionaItem(e:TouchEvent):void 
		{
			var _toque:Touch = e.getTouch((e.currentTarget) as Image );
			if(_toque)
			{
				
				if(_toque.phase == TouchPhase.BEGAN) 
				{
					
					var item:ImagemItem = new ImagemItem(("i"+((e.currentTarget) as Image ).name), 0, 1, 1, 0,0);
					item.name = "i";
					item.x = 300;
					item.y = 300;
					pagina[ControleGeral.currentPagina].quadro[ControleGeral.currentQuadro].addChild(item);
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
							var PosFutura:Number= quadro[l].x + 80;
							if ( (PosFutura < 70) || (PosFutura > 470) )
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
		
	}

}