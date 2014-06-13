package src_telas.itens_deskTop.Itens_menu_esquerdo 
{
	import feathers.controls.TextInput;
	import src_assets.Assets;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;

	/**
	 * ...
	 * @author ...
	 */
	public class Balao extends Sprite
	{
		
		private var imgBalao:Image;
		private var imgContornoSeta:Image;
		private var imgSeta:Image;
		private var campoTexto:TextInput;
		///////////////////
		private var entradaTexto:TextInput;
		
		public function Balao() 
		{
			imgBalao = new Image(Assets.getTexture("b0"));
			imgSeta = new Image(Assets.getTexture("bd0"));
			imgContornoSeta = new Image(Assets.getTexture("bdf0"));
			campoTexto = new TextInput();
			
			/////////definindo o centro
			imgBalao.pivotX = imgBalao.width / 2; /*---*/ imgBalao.pivotY = imgBalao.height / 2;
			imgSeta.pivotX = 0; /*---*/ imgSeta.pivotY = imgSeta.height / 2;
			imgContornoSeta.pivotX = 0; /*---*/ imgContornoSeta.pivotY = imgContornoSeta.height / 2;
			
			//campoTexto.pivotX = imgBalao.width / 2; /*---*/ campoTexto.pivotY = imgBalao.height / 2;
			////////////
			trace("O TAMANHO DO BAGULHO "+imgBalao.width/2);
			campoTexto.text = "BLABLA";
			
			////
			//campoTexto.backgroundEnabledSkin = new Image(Assets.getTexture("b0"));
			//campoTexto.backgroundFocusedSkin = new Image(Assets.getTexture("b0"));
			
			////
			campoTexto.maxChars = 14;
			campoTexto.width =125;
			campoTexto.height = 22;
			/////////adicionando objetos
			addChild(imgContornoSeta);
			addChild(imgBalao);
			addChild(imgSeta);
			addChild(campoTexto);
			
			campoTexto.x = -( (imgBalao.width / 4)+10);
			campoTexto.y=-imgBalao.height / 4;
			
			////////////////////
			imgSeta.addEventListener(TouchEvent.TOUCH, giraSeta);
			imgBalao.addEventListener(TouchEvent.TOUCH, Move);
		}
		
		private function Move(e:TouchEvent):void 
		{
			//---------------------------------
			var _toque:Touch = e.getTouch((e.currentTarget) as Image );
			if(_toque)
			{
				if(_toque.phase == TouchPhase.MOVED) 
				{
					this.x = _toque.globalX;
					this.y = _toque.globalY;
				}
			}
		}
		
		private function giraSeta(e:TouchEvent):void 
		{
			//---------------------------------
			var _toque:Touch = e.getTouch((e.currentTarget) as Image );
			if(_toque)
			{
				if(_toque.phase == TouchPhase.MOVED) 
				{
					imgSeta.rotation += .1;
					imgContornoSeta.rotation += .1;
				}
				
			}
		}
		
		private function setPivo(_img:Image):void
		{
			_img.pivotX = _img.width / 2; /*---*/ _img.pivotY = _img.height / 2;
		}
		
	}

}