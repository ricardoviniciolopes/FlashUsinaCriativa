package src_assets 
{
	import flash.display.Bitmap;
	import flash.utils.Dictionary;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.textures.Texture;
	/**
	 * ...
	 * @author ...
	 */
	public class Assets extends Sprite
	{
		[Embed(source = "../../assets/Ferramenta/quadroDosObjetos.png")]
		private static const quadro_dos_objetos_img:Class;
		//----------------------------
		[Embed(source="../../assets/fundoBranco.png")]
		private static const fundo_cinza_img:Class;
		//ITENS DA TELA HOME------------------------------------------------------------------
		[Embed(source = "../../assets/Home/home.jpg")]
		public static const fundo_home_img:Class;
		//--
		[Embed(source = "../../assets/Home/BTN_Novo.png")]
		public static const btn_novo_img:Class;
		[Embed(source = "../../assets/Home/BTN_Novo_Over.png")]
		public static const btn_novo_over_img:Class;
		//--
		[Embed(source = "../../assets/Home/BTN_Rascunho.png")]
		public static const btn_rascunho_img:Class;
		[Embed(source = "../../assets/Home/BTN_Rascunho_Over.png")]
		public static const btn_rascunho_over_img:Class;
		//--------------------
		
		//ITENS TELA NOVO--------------------------------------------------------------------
		[Embed(source = "../../assets/Novo/Novo.png")]
		public static const tela_novo_fundo_novo_img:Class;
		//---------- botao charge
		[Embed(source = "../../assets/Novo/BTN_charge.png")]
		private static const tela_novo_btn_charge_img:Class;
		[Embed(source = "../../assets/Novo/BTN_charge_over.png")]
		public static const tela_novo_btn_charge_over_img:Class;
		[Embed(source = "../../assets/Novo/Tip_Charge.png")]
		public static const tela_novo_btn_charge_tip_img:Class;
		//---------- botao tira
		[Embed(source = "../../assets/Novo/BTN_tira.png")]
		public static const tela_novo_btn_tira_img:Class;
		[Embed(source = "../../assets/Novo/BTN_tira_over.png")]
		public static const tela_novo_btn_tira_over_img:Class;
		[Embed(source = "../../assets/Novo/Tip_Tira.png")]
		public static const tela_novo_btn_tira_tip_img:Class;
		//---------- botao quadrinho
		[Embed(source = "../../assets/Novo/BTN_quadrinho.png")]
		public static const tela_novo_btn_quadrinho_img:Class;
		[Embed(source = "../../assets/Novo/BTN_quadrinho_over.png")]
		public static const tela_novo_btn_quadrinho_over_img:Class;
		//----------- botao add amigos
		[Embed(source = "../../assets/Novo/BTN_addamigos.png")]
		public static const tela_novo_btn_addAmigos_img:Class;
		[Embed(source = "../../assets/Novo/BTN_addamigos_over.png")]
		public static const tela_novo_btn_addAmigos_over_img:Class;
		//-----------
		
		//ITENS TELA DESKTOP----------------------------------------
		[Embed(source = "../../assets/Ferramenta/fundo.png")]
		public static const deskTop_fundo_img:Class;
		//-------------------------------------------------------
		
		//ITENS TELA DESKTOP MENU esquerdo----------------------------------------
		[Embed(source = "../../assets/Ferramenta/interface_escolha/barra_icones.png")]
		public static const barra_icone_img:Class;
		[Embed(source = "../../assets/Ferramenta/interface_escolha/off.png")]
		public static const btn_chave_on_img:Class;
		[Embed(source = "../../assets/Ferramenta/interface_escolha/on.png")]
		public static const btn_chave_of_img:Class;
		//--------------------
		
		//ITENS TELA DESKTOP MENU DIREITO----------------------------------------
		[Embed(source = "../../assets/Ferramenta/LayoutPágina/interface/setaDireitaPagina.png")]
		public static const menu_direito_btn_setaD_img:Class;
		[Embed(source = "../../assets/Ferramenta/LayoutPágina/interface/setaEsquerdaPagina.png")]
		public static const menu_direito_btn_setaE_img:Class;
		////////////////////////////////////////////////
		[Embed(source = "../../assets/Ferramenta/LayoutPágina/interface/MenuAreaPagina.png")]
		public static const menu_direito_fundo_img:Class;
		[Embed(source = "../../assets/Ferramenta/LayoutPágina/interface/btnAbrirPg.png")]
		public static const menu_direito_btn_show_img:Class;
		//-------- botao add
		[Embed(source = "../../assets/Ferramenta/LayoutPágina/interface/btn_addpagina.png")]
		public static const menu_direito_btn_addPagina_img:Class;
		[Embed(source = "../../assets/Ferramenta/LayoutPágina/interface/btn_addpaginaOver.png")]
		public static const menu_direito_btn_addPagina_over_img:Class;
		//-------- botao remove
		[Embed(source = "../../assets/Ferramenta/LayoutPágina/interface/btn_removepagina.png")]
		public static const menu_direito_btn_removePagina_img:Class;
		[Embed(source = "../../assets/Ferramenta/LayoutPágina/interface/btn_removepaginaOver.png")]
		public static const menu_direito_btn_removePagina_over_img:Class;
		//--------
		[Embed(source = "../../assets/Ferramenta/LayoutPágina/interface/pagina.png")]
		public static const menu_direito_pagina_img:Class;
		//======= setas direita e esquerda
		[Embed(source = "../../assets/Ferramenta/LayoutPágina/interface/setaDireitaPagina.png")]
		public static const menu_direito_setaD_img:Class;
		[Embed(source = "../../assets/Ferramenta/LayoutPágina/interface/setaEsquerdaPagina.png")]
		public static const menu_direito_setaE_img:Class;
		//=======
		//-------------------------------------------------------
		
		//====ITENS MINI PAGINA==============================
		[Embed(source = "../../assets/Ferramenta/LayoutPágina/Pg1/Interface/layout1_interface.png")]
		public static const mini_pagina_fundo_img:Class;
		///////
		[Embed(source = "../../assets/Ferramenta/LayoutPágina/Pg1/Interface/quadro1_selected.png")]
		public static const mini_pagina_quadro_0_img:Class;
		[Embed(source = "../../assets/Ferramenta/LayoutPágina/Pg1/Interface/quadro2_selected.png")]
		public static const mini_pagina_quadro_1_img:Class;
		[Embed(source = "../../assets/Ferramenta/LayoutPágina/Pg1/Interface/quadro3_selected.png")]
		public static const mini_pagina_quadro_2_img:Class;
		[Embed(source = "../../assets/Ferramenta/LayoutPágina/Pg1/Interface/quadro4_selected.png")]
		public static const mini_pagina_quadro_3_img:Class;
		[Embed(source = "../../assets/Ferramenta/LayoutPágina/Pg1/Interface/quadro5_selected.png")]
		public static const mini_pagina_quadro_4_img:Class;
		[Embed(source = "../../assets/Ferramenta/LayoutPágina/Pg1/Interface/quadro6_selected.png")]
		public static const mini_pagina_quadro_5_img:Class;
		
		//===================================================
		
		//ITENS RASCUNHO---------------------------------------------------------------------
		[Embed(source = "../../assets/Rascunhos/Rascunhos.png")]
		public static const  rascunhos_fundo_img:Class;
		//------------
		[Embed(source = "../../assets/Rascunhos/BTN_Abrir.png")]
		public static const rascunhos_btn_abrir_img:Class;
		[Embed(source = "../../assets/Rascunhos/BTN_Abrir_Over.png")]
		public static const  rascunhos_btn_abrir_over_img:Class;
		[Embed(source = "../../assets/Rascunhos/TIP_Abrir.png")]
		public static const rascunhos_btn_abrir_tip_img:Class;
		//------------
		[Embed(source = "../../assets/Rascunhos/BTN_lixo.png")]
		public static const  rascunhos_btn_lixo_img: Class;
		[Embed(source = "../../assets/Rascunhos/BTN_lixo_Over.png")]
		public static const  rascunhos_btn_lixo_over_img:Class;
		[Embed(source = "../../assets/Rascunhos/TIP_apagar.png")]
		public static const rascunhos_btn_lixo_tip_img:Class;
		//------------
		[Embed(source = "../../assets/Rascunhos/BTN_rascunhos.png")]
		public static const  rascunhos_btn_rascunhos_seta_img:Class;
		//------------
		[Embed(source = "../../assets/Rascunhos/logoQuadrinhoCriativo.png")]
		public static const  rascunhos_logo_quadrinho_img:Class;
		//------------
		[Embed(source="../../assets/Rascunhos/pgNselecionado.png")]
		public static const  rascunhos_pg_normal_img:Class;
		[Embed(source = "../../assets/Rascunhos/pgselecionado.png")]
		public static const  rascunhos_pg_selecionado_img:Class;
		//------------
		[Embed(source = "../../assets/Rascunhos/quadroThumb.png")]
		public static const rascunhos_quadro_img:Class;
		[Embed(source = "../../assets/Rascunhos/quadroThumb_Over.png")]
		public static const rascunhos_quadro_over_img:Class;
		//------------------
		
		
		//ITENS FERRAMENTA SEPARADOS POR GRUPOS===========================================
		
		//---ITENS BOTOES ESCOLHA---------------------------------------
		//----------------botao acao
		[Embed(source = "../../assets/Ferramenta/botoes_escolha/BTN_acao.png")]
		public static const escolha_btn_acao_img:Class;
		[Embed(source = "../../assets/Ferramenta/botoes_escolha/BTN_acao_over.png")]
		public static const escolha_btn_acao_over_img:Class;
		//----------------botao balao
		[Embed(source = "../../assets/Ferramenta/botoes_escolha/BTN_balao.png")]
		public static const escolha_btn_balao_img:Class;
		[Embed(source = "../../assets/Ferramenta/botoes_escolha/BTN_balao_over.png")]
		public static const escolha_btn_balao_over_img:Class;
		//-------------- botao colar
		[Embed(source = "../../assets/Ferramenta/botoes_escolha/BTN_colar.png")]
		public static const escolha_btn_colar_img:Class;
		[Embed(source = "../../assets/Ferramenta/botoes_escolha/BTN_colar_over.png")]
		public static const escolha_btn_colar_over_img:Class;
		//------------ botao copiar
		[Embed(source = "../../assets/Ferramenta/botoes_escolha/BTN_copiar.png")]
		public static const escolha_btn_copiar_img:Class;
		[Embed(source = "../../assets/Ferramenta/botoes_escolha/BTN_copiar_over.png")]
		public static const escolha_btn_copiar_over_img:Class;
		//------------ botao deletar
		[Embed(source = "../../assets/Ferramenta/botoes_escolha/BTN_deletar.png")]
		public static const escolha_btn_deletar_img:Class;
		[Embed(source = "../../assets/Ferramenta/botoes_escolha/BTN_deletar_over.png")]
		public static const escolha_btn_deletar_over_img:Class;
		//-----------botao desfazer
		[Embed(source = "../../assets/Ferramenta/botoes_escolha/BTN_desfazer.png")]
		public static const escolha_btn_desfazer_img:Class;
		[Embed(source = "../../assets/Ferramenta/botoes_escolha/BTN_desfazer_over.png")]
		public static const escolha_btn_desfazer_over_img:Class;
		//----------- botao fundo
		[Embed(source = "../../assets/Ferramenta/botoes_escolha/BTN_fundo.png")]
		public static const escolha_btn_fundo_img:Class;
		[Embed(source = "../../assets/Ferramenta/botoes_escolha/BTN_fundo_over.png")]
		public static const escolha_btn_fundo_over_img:Class;
		//---------- botao item
		[Embed(source = "../../assets/Ferramenta/botoes_escolha/BTN_item.png")]
		public static const escolha_btn_item_img:Class;
		[Embed(source="../../assets/Ferramenta/botoes_escolha/BTN_item_over.png")]
		public static const escolha_btn_item_over_img:Class;
		//--------- botao personagem
		[Embed(source = "../../assets/Ferramenta/botoes_escolha/BTN_personagem.png")]
		public static const escolha_btn_personagem_img:Class;
		[Embed(source = "../../assets/Ferramenta/botoes_escolha/BTN_personagem_over.png")]
		public static const escolha_btn_personagem_over_img:Class;
		//---------- botao publicar
		[Embed(source = "../../assets/Ferramenta/botoes_escolha/BTN_publicar.jpg")]
		public static const escolha_btn_publicar_img:Class;
		[Embed(source = "../../assets/Ferramenta/botoes_escolha/BTN_publicar_over.jpg")]
		public static const escolha_btn_publicar_over_img:Class;
		//----------- botao recortar
		[Embed(source = "../../assets/Ferramenta/botoes_escolha/BTN_recortar.png")]
		public static const escolha_btn_recortar_img:Class;
		[Embed(source = "../../assets/Ferramenta/botoes_escolha/BTN_recortar_over.png")]
		public static const escolha_btn_recortar_over_img:Class;
		//----------- botao salvar
		[Embed(source = "../../assets/Ferramenta/botoes_escolha/BTN_salvar.jpg")]
		public static const escolha_btn_salvar_img:Class;
		[Embed(source = "../../assets/Ferramenta/botoes_escolha/BTN_salvar_over.jpg")]
		public static const escolha_btn_salvar_over_img:Class;
		//----------- botao upload
		[Embed(source = "../../assets/Ferramenta/botoes_escolha/BTN_upload.png")]
		public static const escolha_btn_upload_img:Class;
		[Embed(source = "../../assets/Ferramenta/botoes_escolha/BTN_upload_over.png")]
		public static const escolha_btn_upload_over_img:Class;
		//--------------------------------------------------------------
		
		
		//-------CENARIOS / FUNDOS---------------------------
		[Embed(source = "../../assets/Ferramenta/cenarios/cenarios/cenario_cidade_final_00.png")]
		public static const f0_img:Class;
		[Embed(source = "../../assets/Ferramenta/cenarios/cenarios/cenario_cidade_final_01.png")]
		public static const f1_img:Class;
		[Embed(source = "../../assets/Ferramenta/cenarios/cenarios/dia_das_bruxas_final_00.png")]
		public static const f2_img:Class;
		[Embed(source = "../../assets/Ferramenta/cenarios/cenarios/dia_das_bruxas_final_01.png")]
		public static const f3_img:Class;
		[Embed(source = "../../assets/Ferramenta/cenarios/cenarios/fazenda_final_00.png")]
		public static const f4_img:Class;
		[Embed(source = "../../assets/Ferramenta/cenarios/cenarios/fazenda_final_01.png")]
		public static const f5_img:Class;
		[Embed(source = "../../assets/Ferramenta/cenarios/cenarios/natalino_final_00.png")]
		public static const f6_img:Class;
		[Embed(source = "../../assets/Ferramenta/cenarios/cenarios/natalino_final_03.png")]
		public static const f7_img:Class;
		[Embed(source = "../../assets/Ferramenta/cenarios/cenarios/natalino_final_04.png")]
		public static const f8_img:Class;
		[Embed(source = "../../assets/Ferramenta/cenarios/cenarios/praia_final_00.png")]
		public static const f9_img:Class;
		[Embed(source = "../../assets/Ferramenta/cenarios/cenarios/praia_final_01.png")]
		public static const f10_img:Class;
		//=====FUNDOS THUMB==============
		[Embed(source = "../../assets/Ferramenta/cenarios/cenarios/thumb_Cidade1.png")]
		public static const tf0_img:Class;
		[Embed(source = "../../assets/Ferramenta/cenarios/cenarios/thumb_Cidade2.png")]
		public static const tf1_img:Class;
		[Embed(source = "../../assets/Ferramenta/cenarios/cenarios/thumb_Diasdasbruxas1.png")]
		public static const tf2_img:Class;
		[Embed(source = "../../assets/Ferramenta/cenarios/cenarios/thumb_Diasdasbruxas2.png")]
		public static const tf3_img:Class;
		[Embed(source = "../../assets/Ferramenta/cenarios/cenarios/thumb_Fazenda1.png")]
		public static const tf4_img:Class;
		[Embed(source = "../../assets/Ferramenta/cenarios/cenarios/thumb_Fazenda2.png")]
		public static const tf5_img:Class;
		[Embed(source = "../../assets/Ferramenta/cenarios/cenarios/thumb_natal1.png")]
		public static const tf6_img:Class;
		[Embed(source = "../../assets/Ferramenta/cenarios/cenarios/thumb_natal2.png")]
		public static const tf7_img:Class;
		[Embed(source = "../../assets/Ferramenta/cenarios/cenarios/thumb_natal3.png")]
		public static const tf8_img:Class;
		[Embed(source = "../../assets/Ferramenta/cenarios/cenarios/thumb_praia1.png")]
		public static const tf9_img:Class;
		[Embed(source = "../../assets/Ferramenta/cenarios/cenarios/thumb_praia2.png")]
		public static const tf10_img:Class;
		//--------------------------------
		
		//-----efeito quadro
		[Embed(source = "../../assets/Ferramenta/efeito_de_quadro/efeito0.png")]
		public static const e0_img:Class;
		[Embed(source = "../../assets/Ferramenta/efeito_de_quadro/efeito1.png")]
		public static const e1_img:Class;
		[Embed(source = "../../assets/Ferramenta/efeito_de_quadro/efeito2.png")]
		public static const e2_img:Class;
		[Embed(source = "../../assets/Ferramenta/efeito_de_quadro/linhas de ação.png")]
		public static const e3_img:Class;
		[Embed(source = "../../assets/Ferramenta/efeito_de_quadro/linhas de ação2.png")]
		public static const e4_img:Class;
		//------------------------------------
		
		//------------- botoes edicao de itens
		//---botao camada frente
		[Embed(source = "../../assets/Ferramenta/edicao_de_itens/BTN_camadafrente.png")]
		public static const edicao_btn_camada_frente_img:Class;
		//---botao camada tras
		[Embed(source = "../../assets/Ferramenta/edicao_de_itens/BTN_camadatras.png")]
		public static const edicao_btn_camada_tras_img:Class;
		//---botao editar rodar
		[Embed(source = "../../assets/Ferramenta/edicao_de_itens/btn_editarrodar.png")]
		public static const edicao_editar_rodar_img:Class;
		//--- botao editar escala
		[Embed(source = "../../assets/Ferramenta/edicao_de_itens/BTN_escala.png")]
		public static const edicao_editar_escala_img:Class;
		//--- botao editar gira direita
		[Embed(source = "../../assets/Ferramenta/edicao_de_itens/BTN_giradireita.png")]
		public static const edicao_editar_giraD_img:Class;
		//--- botao editar gira esquerda
		[Embed(source = "../../assets/Ferramenta/edicao_de_itens/BTN_giraesquerda.png")]
		public static const edicao_editar_giraE_img:Class;
		//------------------------------------
		
		//---inteface escolha dos itens 
		[Embed(source = "../../assets/Ferramenta/interface2_escolha/BTN_direita.png")]
		public static const barra_popup_setaD_img:Class;
		[Embed(source = "../../assets/Ferramenta/interface2_escolha/BTN_esquerda.png")]
		public static const barra_popup_setaE_img:Class;
		//--- barra dos efeitos
		[Embed(source = "../../assets/Ferramenta/interface2_escolha/efeitos/BGpopup_efeito_SUP.png")]
		public static const popup_efeito_bg_sup_img:Class;
		[Embed(source = "../../assets/Ferramenta/interface2_escolha/efeitos/BGpopup_efeitos.png")]
		public static const popup_efeito_bg_img:Class;
		[Embed(source = "../../assets/Ferramenta/interface2_escolha/efeitos/btn_selecionaveisEfeitos.png")]
		public static const popup_efeito_quadro_img:Class;
		[Embed(source = "../../assets/Ferramenta/interface2_escolha/efeitos/btnrolagem_efeito.png")]
		public static const popup_efeito_barra_rolagem_img:Class;
		[Embed(source = "../../assets/Ferramenta/interface2_escolha/efeitos/rolagem_efeitos.png")]
		public static const popup_efeito_btn_rolagem_img:Class;
		//--------------------
		
		//--- barra do fundo
		[Embed(source = "../../assets/Ferramenta/interface2_escolha/fundo/BGpopup_fundo.png")]
		public static const popup_fundo_bg_img:Class;
		[Embed(source = "../../assets/Ferramenta/interface2_escolha/fundo/BGpopup_fundo_SUP.png")]
		public static const popup_fundo_bg_sup_img:Class;
		[Embed(source = "../../assets/Ferramenta/interface2_escolha/fundo/btn_selecionaveisBg.png")]
		public static const popup_fundo_quadro_img:Class;
		[Embed(source = "../../assets/Ferramenta/interface2_escolha/fundo/rolagem_fundo.png")]
		public static const popup_fundo_barra_rolagem_img:Class;
		//------------------
		
		//--barra item
		[Embed(source="../../assets/Ferramenta/interface2_escolha/item/BGpopup_item.png")]
		public static const popup_item_bg_img:Class;
		[Embed(source="../../assets/Ferramenta/interface2_escolha/item/BGpopup_item_SUP.png")]
		public static const popup_item_bg_sup_img:Class;
		[Embed(source="../../assets/Ferramenta/interface2_escolha/item/btn_selecionaveisItem.png")]
		public static const popup_item_quadro_img:Class;
		[Embed(source="../../assets/Ferramenta/interface2_escolha/item/btnrolagem_item.png")]
		public static const popup_item_btn_rolagem_img:Class;
		[Embed(source="../../assets/Ferramenta/interface2_escolha/item/rolagem_item.png")]
		public static const popup_item_barra_rolagem_img:Class;
		//----------------------------
		
		//--barra balao
		[Embed(source="../../assets/Ferramenta/interface2_escolha/layout_balao/Layout.png")]
		public static const popup_balao_bg_img:Class;
		[Embed(source="../../assets/Ferramenta/interface2_escolha/layout_balao/BGpopup_layout_balao_SUP.png")]
		public static const popup_balao_bg_sup_img:Class;
		[Embed(source="../../assets/Ferramenta/interface2_escolha/layout_balao/quadro.png")]
		public static const popup_balao_quadro_img:Class;
		[Embed(source="../../assets/Ferramenta/interface2_escolha/layout_balao/btnrolagem_layout_balao.png")]
		public static const popup_balao_btn_rolagem_img:Class;
		[Embed(source="../../assets/Ferramenta/interface2_escolha/layout_balao/rolagem_layout_balao.png")]
		public static const popup_balao_barra_rolagem_img:Class;
		//--------------
		
		//--barra personagem
		[Embed(source="../../assets/Ferramenta/interface2_escolha/personagem/BGpopup_personagens.png")]
		public static const popup_personagem_bg_img:Class;
		[Embed(source="../../assets/Ferramenta/interface2_escolha/personagem/BGpopup_personagem_SUP.png")]
		public static const popup_personagem_bg_sup_img:Class;
		[Embed(source="../../assets/Ferramenta/interface2_escolha/personagem/btn_selecionaveis.png")]
		public static const popup_personagem_quadro_img:Class;
		[Embed(source="../../assets/Ferramenta/interface2_escolha/personagem/btnrolagem_personagem.png")]
		public static const popup_personagem_btn_rolagem_img:Class;
		[Embed(source="../../assets/Ferramenta/interface2_escolha/personagem/rolagem_personagem.png")]
		public static const popup_personagem_barra_rolagem_img:Class;
		//--------------
		
		//--botoes das barras dos layout
		[Embed(source = "../../assets/Ferramenta/interface2_escolha/padrao/BTN_direita.png")]
		public static const popup_btn_seta_direita_img:Class;
		[Embed(source = "../../assets/Ferramenta/interface2_escolha/padrao/BTN_esquerda.png")]
		public static const popup_btn_seta_esquerda_img:Class;
		[Embed(source = "../../assets/Ferramenta/interface2_escolha/padrao/BTN_Voltar.png")]
		public static const popup_btn_seta_voltar_img:Class;
		//------------------------------
		
		
		
		//================================================================================
		public static var dictionaryTexture:Dictionary = new Dictionary();
		public static var dictionaryAtlas:Dictionary = new Dictionary();
		public static var dictionarySkeleton:Dictionary = new Dictionary();
		
		public function Assets() 
		{
			
		}
		//
		public static function getTexture(_nome:String):Texture
		{
			//trace("*****" + _nome + "&&&&");
			if(dictionaryTexture[_nome] == undefined)
			{
				var BMP:Bitmap = new Assets[_nome+"_img"]();
				dictionaryTexture[_nome] = Texture.fromBitmap(BMP);
				
			}
			return dictionaryTexture[_nome];
		}
		
	}

}