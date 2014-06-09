package scr_objetos 
{
	import flash.geom.Point;
	import src_assets.Assets;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	import starling.filters.BlurFilter;
	import starling.filters.ColorMatrixFilter;
	import starling.filters.BlurFilter;
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
		public var imagem:Image;
		//publicas para verificação--
		public var myRotation:Number;
		public var myScaleX:Number=1;
		public var myScaleY:Number=1;
		public var myIndex:Number;
		
		public var meuNome:String;
		
		private var numeroTeste:Number = 0;
		//---------------------------
		var blur:ColorMatrixFilter = new ColorMatrixFilter();
		
		public function Item(_nome:String,_rotacao:Number,_scaleX:Number,_scaleY:Number,_index:Number) 
		{
			meuNome = _nome;
			myRotation = _rotacao;
			myScaleX = _scaleX;
			myScaleY = _scaleY;
			myIndex = _index;
			
			
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
			imagem = new Image(Assets.getTexture("sapo"));
			
			////////////////////////
			defineCentroMeio(imagem);
			defineCentroMeio(quadroObjeto);
			defineCentroMeio(icone_scale); /*---*/ defineCentroMeio(icone_rotation);
			defineCentroMeio(icone_giraD); /*---*/ defineCentroMeio(icone_giraE);
			defineCentroMeio(icone_indiceUp); /*---*/ defineCentroMeio(icone_indiceDown);
			//-------------------------
			//addChild(quadroObjeto);
			addChild(imagem);
			addChild(icone_scale); /*---*/ addChild(icone_rotation);
			addChild(icone_giraD); /*---*/ addChild(icone_giraE);
			addChild(icone_indiceUp); /*---*/ addChild(icone_indiceDown);
			defineParametros();
		}
		
		private function defineParametros():void 
		{
			imagem.scaleX = myScaleX;/**/quadroObjeto.scaleX = myScaleX;
			imagem.scaleY = myScaleY;/**/quadroObjeto.scaleY = myScaleY;
			imagem.rotation = myRotation;/**/quadroObjeto.rotation = myRotation;
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
			
			quadroObjeto.x = quadroObjeto.width / 2; /**/ quadroObjeto.y = quadroObjeto.height / 2;
			imagem.x = quadroObjeto.width / 2; /**/ imagem.y = quadroObjeto.height / 2;
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
			imagem.addEventListener(TouchEvent.TOUCH, moveItem);
			icone_indiceUp.addEventListener(TouchEvent.TOUCH, IndiceUp);
			icone_indiceDown.addEventListener(TouchEvent.TOUCH, IndiceDown);
		}
		
		// movimenta o personagem
		private function moveItem(e:TouchEvent):void 
		{
			ControleGeral.scalexDoItem = myScaleX;
			ControleGeral.scaleyDoItem = myScaleY;
			ControleGeral.rotacaoDoItem = myRotation;
			ControleGeral.nomeDoItem = meuNome;
			//---------------------------------
			var _toque:Touch = e.getTouch((e.currentTarget) as Image );
			if(_toque)
			{
				if(_toque.phase == TouchPhase.MOVED) 
				{
					this.x = _toque.globalX-quadroObjeto.width/2;
					this.y = _toque.globalY-quadroObjeto.height/2;
				}
			}
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
					if (X < _toque.globalX)
					{ 
						quadroObjeto.scaleX += .01; /**/ quadroObjeto.scaleY += .01; 
						imagem.scaleX += .01; /**/ imagem.scaleY += .01; 
						
					}
					else if (X > _toque.globalX) 
					{ 
						quadroObjeto.scaleX -= .01; /**/ quadroObjeto.scaleY -= .01;
						/**/ imagem.scaleX -= .01; /**/ imagem.scaleY -= .01; 
						
					}
					X = _toque.globalX; /**/ Y = _toque.globalY;
					imagem.filter = blur;
					imagem.alpha = .8;
					definePosicao();
				}
				if(_toque.phase == TouchPhase.ENDED) 
				{
					imagem.filter = null;
					imagem.alpha = 1;
				}
				myScaleX = imagem.scaleX;/**/ myScaleY = imagem.scaleY;
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
					numeroTeste = 0;
				}
				if(_toque.phase == TouchPhase.MOVED) 
				{
					if (X < _toque.globalX)
					{ 
						imagem.rotation += .05;
						numeroTeste+= 0.0005;
					}
					else if (X > _toque.globalX) 
					{ 
						imagem.rotation -= .05; 
						numeroTeste-= 0.001;
					}
					X = _toque.globalX; /**/ Y = _toque.globalY;
					blur.adjustHue(numeroTeste);
					imagem.filter = blur;
					//imagem.alpha = .8;
				}
				if(_toque.phase == TouchPhase.ENDED) 
				{
					//imagem.filter = null;
					//imagem.alpha = 1;
				}
				myRotation = imagem.rotation;
			}
		}
		
		///MUDA O INDICE DO OBJETO
		private function IndiceUp(e:TouchEvent):void
		{
			var _toque:Touch = e.getTouch((e.currentTarget) as Image );
			if(_toque)
			{
				if(_toque.phase == TouchPhase.BEGAN) 
				{
					var meuIndice:Number = this.parent.getChildIndex(this);
					if ((meuIndice+1) <= this.parent.numChildren - 1)
					{
						this.parent.setChildIndex(this, (meuIndice+1) );
					}
				}
			}
		}
		///
		private function IndiceDown(e:TouchEvent):void
		{
			var _toque:Touch = e.getTouch((e.currentTarget) as Image );
			if(_toque)
			{
				if(_toque.phase == TouchPhase.BEGAN) 
				{
					var meuIndice:Number = this.parent.getChildIndex(this);
					if ((meuIndice-1) >= 1)
					{
						this.parent.setChildIndex(this, (meuIndice-1) );
					}
				}
			}
		}
	}

}
