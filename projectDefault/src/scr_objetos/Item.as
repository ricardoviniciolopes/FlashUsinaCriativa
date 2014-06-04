package scr_objetos 
{
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
	public class Item extends Sprite
	{
		private var icone_scale:Image;
		private var icone_rotation:Image;
		private var icone_giraD:Image;
		private var icone_giraE:Image;
		private var icone_indiceUp:Image;
		private var icone_indiceDown:Image;
		private var quadroObjeto:Image;
		private var X:Number;
		private var Y:Number;
		//
		public function Item() 
		{
			initValores();
			definePosicao();
			adicionandoEventosIcones();
			this.pivotX = quadroObjeto.scaleX / 2;
			this.pivotY = quadroObjeto.scaleY / 2;
		}
		
		private function initValores():void 
		{
			X = 0; /*--*/ Y = 0;
			quadroObjeto = new Image(Assets.getTexture("quadro_dos_objetos"));
			icone_scale = new Image(Assets.getTexture("edicao_editar_escala"));
			icone_rotation = new Image(Assets.getTexture("edicao_editar_rodar"));
			icone_giraD = new Image(Assets.getTexture("edicao_editar_giraD"));
			icone_giraE = new Image(Assets.getTexture("edicao_editar_giraE"));
			icone_indiceUp = new Image(Assets.getTexture("edicao_btn_camada_frente"));
			icone_indiceDown = new Image(Assets.getTexture("edicao_btn_camada_tras"));
			//--------------
			
			//defineCentroMeio(quadroObjeto);
			defineCentroMeio(icone_scale); /*---*/ defineCentroMeio(icone_rotation);
			defineCentroMeio(icone_giraD); /*---*/ defineCentroMeio(icone_giraE);
			defineCentroMeio(icone_indiceUp); /*---*/ defineCentroMeio(icone_indiceDown);
			//-------------------------
			addChild(quadroObjeto);
			
			addChild(icone_scale); /*---*/ addChild(icone_rotation);
			addChild(icone_giraD); /*---*/ addChild(icone_giraE);
			addChild(icone_indiceUp); /*---*/ addChild(icone_indiceDown);
			
			//quadroObjeto.x = quadroObjeto.width / 2; /*--*/ quadroObjeto.y = quadroObjeto.height / 2;
		}
		
		//ajusta o centro para o meio das imagens
		private function defineCentroMeio(_imagem:Image):void
		{
			_imagem.pivotX = _imagem.width / 2;
			_imagem.pivotY = _imagem.height / 2;
		}
		// define posicao dos icones
		private function definePosicao():void
		{
			icone_scale.x = quadroObjeto.width; /*--*/ icone_scale.y = quadroObjeto.height - quadroObjeto.height;
			icone_rotation.x = quadroObjeto.width - quadroObjeto.width; /*--*/ icone_rotation.y = quadroObjeto.height - quadroObjeto.height;
			icone_giraE.x = quadroObjeto.width - quadroObjeto.width; /*--*/ icone_giraE.y = quadroObjeto.height / 2;
			icone_giraD.x = quadroObjeto.width; /*--*/ icone_giraD.y = quadroObjeto.height / 2;
			icone_indiceUp.x = quadroObjeto.width; /*--*/ icone_indiceUp.y = quadroObjeto.height;
			icone_indiceDown.x = quadroObjeto.width-quadroObjeto.width; /*--*/ icone_indiceDown.y = quadroObjeto.height;
			
		}
		
		private function adicionandoEventosIcones():void 
		{
			icone_scale.addEventListener(TouchEvent.TOUCH, mudaScale);
			icone_rotation.addEventListener(TouchEvent.TOUCH, mudaRotacao);
		}
		//muda a escala do objeto
		private function mudaScale(e:TouchEvent):void 
		{
			var _toque:Touch = e.getTouch((e.currentTarget) as Image );
			if(_toque)
			{
				if(_toque.phase == TouchPhase.BEGAN) 
				{
					X = _toque.globalX; /**/ Y = _toque.globalY;
				}
				if(_toque.phase == TouchPhase.MOVED) 
				{
					if (X < _toque.globalX) { quadroObjeto.scaleX += .01; /**/ quadroObjeto.scaleY += .01; }
					else if (X > _toque.globalX) { quadroObjeto.scaleX -= .01; /**/ quadroObjeto.scaleY -= .01; }
					X = _toque.globalX; /**/ Y = _toque.globalY;
					definePosicao();
				}
			}
		}
		//gira o objeto
		private function mudaRotacao(e:TouchEvent):void 
		{
			var _toque:Touch = e.getTouch((e.currentTarget) as Image );
			if(_toque)
			{
				if(_toque.phase == TouchPhase.BEGAN) 
				{
					X = _toque.globalX; /**/ Y = _toque.globalY;
				}
				if(_toque.phase == TouchPhase.MOVED) 
				{
					if (X < _toque.globalX) { this.rotation += .01;}
					else if (X > _toque.globalX) { this.rotation += .01; }
					X = _toque.globalX; /**/ Y = _toque.globalY;
					definePosicao();
				}
			}
		}
		
		
	}

}