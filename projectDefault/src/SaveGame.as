package  
{
	import scr_objetos.Item;
	import src_telas.itens_deskTop.Pagina;
	import starling.display.Image;
	import starling.display.Sprite;
	/**
	 * ...
	 * @author ...
	 */
	public class SaveGame extends Sprite
	{
		public static var tipoQuadrinho:String;
		public static var quantidadePagina:Number;
		public static var quantidadeQuadro:Vector.<int>= new Vector.<int>;
		public static var objetosCena:Vector.<Array>= new Vector.<Array>;
		public static var infoObjeto:Array = new Array( { meuNome:String, scalaX:Number, scalaY:Number, rotacao:Number, X:Number, Y:Number, Indice:Number } );
		
		private var pagina:Vector.<Pagina>;
		public function SaveGame() 
		{
			
		}
		
		public  function Save(_pagina:Vector.<Pagina>):void
		{
			pagina = _pagina;
			quantidadePagina = pagina.length;
			for (var ip:Number = 0; ip < pagina.length; ip++ )
			{ 
				
				quantidadeQuadro[ip] = pagina[ip].quadro.length;
				for (var iq:Number = 0; iq < pagina[ip].quadro.length-1;iq++ )
				{
				//---
					var quantidadeFilho:Number = pagina[ip].quadro[iq].numChildren;	
					
					//if (quantidadeFilho>1)
					//{
						trace(" IQ "+iq+" Ip "+ip+" qntFilho "+quantidadeFilho);
						for (var ob:Number = 0; ob < quantidadeFilho-1;ob++ )
						{
							
							trace("!!!! "+pagina[ip].quadro[iq].getChildAt(ob).name);
							if (pagina[ip].quadro[iq].getChildAt(ob).name.charAt(0)=="f")
							{
								var imagem:Image = (pagina[ip].quadro[iq].getChildAt(ob))as Image;
								infoObjeto[ob].meuNome = imagem.name;
								infoObjeto[ob].scalaX = imagem.scaleX;
								infoObjeto[ob].scalaY = imagem.scaleY;
								infoObjeto[ob].rotacao = imagem.rotation;
								infoObjeto[ob].X = imagem.x;
								infoObjeto[ob].Y = imagem.y;
								infoObjeto[ob].Indice = 0;
							}
							else if(pagina[ip].quadro[iq].getChildAt(ob).name.charAt(0)=="i")
							{
								var objeto:Item = (pagina[ip].quadro[iq].getChildAt(ob)) as Item;
								infoObjeto.push( {meuNome:objeto.meuNome, scalaX:objeto.myScaleX, scalaY:objeto.myScaleY,rotacao:objeto.myRotation, X:objeto.x, Y:objeto.y, Indice:0});
							}
							
						}
						objetosCena[iq] = infoObjeto;
					//}
				//---	
				}
				
				
			}
			//trace("SALVO "+objetosCena[0]);
		}
		
	}

}