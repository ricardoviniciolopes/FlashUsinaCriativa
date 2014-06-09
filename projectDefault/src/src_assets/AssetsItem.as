package src_assets 
{
	import starling.display.Sprite;
	import flash.display.Bitmap;
	import flash.utils.Dictionary;
	import starling.display.Sprite;
	import starling.text.BitmapFont;
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	/**
	 * ...
	 * @author ...
	 */
	public class AssetsItem extends Sprite
	{
		[Embed(source="../../assets/Ferramenta/itens/bicicleta/bicicleta.png")]
		public static const b_img:Class;
		//xml
		[Embed(source = "../../assets/Ferramenta/itens/bicicleta/bicicleta.xml", mimeType = "application/octet-stream")]
		public static const b_xml:Class;
		
		//VARIAVEIS
		public static var dictionaryTexture:Dictionary = new Dictionary();
		public static var dictionaryAtlas:Dictionary = new Dictionary();
		public static var dictionarySkeleton:Dictionary = new Dictionary();
		//
		
		public function AssetsItem() 
		{
			
		}
		
		
		public static function getTexture(_nome:String):Texture
		{
			//trace("*****" + _nome + "&&&&");
			if (dictionaryTexture[_nome] == undefined)
			{
				var BMP:Bitmap = new Images[_nome+"_img"]();
				dictionaryTexture[_nome] = Texture.fromBitmap(BMP);
				
			}
			return dictionaryTexture[_nome];
		}
		
		/// FUNCAO PARA CARREGAR TEXTUREATLAS
		/**
		 * 
		 * @param	_nome _nome:Nome do TextureAtlas a ser carregado
		 * @return
		 */
		public static function getAtlas(_nome:String):TextureAtlas
		{
			var TEXTURE:Texture = getTexture(_nome);
			var XMLs:XML= XML(new Images[_nome+"_xml"]())
			dictionaryAtlas[_nome] = new TextureAtlas(TEXTURE, XMLs);
			
			return dictionaryAtlas[_nome];
		}
	}

}