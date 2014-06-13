package src_assets 
{
	import flash.display.Bitmap;
	import flash.sampler.NewObjectSample;
	import flash.utils.Dictionary;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	/**
	 * ...
	 * @author ...
	 */
	public class Assets extends Sprite
	{
		
		
		[Embed(source = "../../assets/Ferramenta/itens/animais/sapo.png")]
		public static const sapo_img:Class;
		////////////////////////////////////////////////////////////////
		[Embed(source = "../../assets/Ferramenta/quadroDosObjetos.png")]
		public static const quadro_dos_objetos_img:Class;
		//----------------------------
		[Embed(source="../../assets/fundoBranco.png")]
		public static const fundo_cinza_img:Class;
		//ITENS DA TELA HOME--------------------------------------------
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
		//---ITENS-------IMG---XML--------------------------------------------------------------------------------------------------------
			// abobora--
			[Embed(source = "../../assets/Ferramenta/itens/abobora/abobora.png")]
			private static const i0_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/abobora/abobora.xml", mimeType = "application/octet-stream")]
			private static const i0_xml:Class;
			// bicicleta
			[Embed(source = "../../assets/Ferramenta/itens/bicicleta/bicicleta.png")]
			private static const i1_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/bicicleta/bicicleta.xml", mimeType = "application/octet-stream")]
			private static const i1_xml:Class;
			//boia pato
			[Embed(source = "../../assets/Ferramenta/itens/boia_pato/boiapato.png")]
			private static const i2_img:Class;
			[Embed(source="../../assets/Ferramenta/itens/boia_pato/boiapato.xml", mimeType = "application/octet-stream")]
			private static const i2_xml:Class;
			// bola futebol
			[Embed(source = "../../assets/Ferramenta/itens/bola_futebol/bola.png")]
			private static const i3_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/bola_futebol/bola.xml", mimeType = "application/octet-stream")]
			private static const i3_xml:Class;
			//boneco neve
			[Embed(source = "../../assets/Ferramenta/itens/boneco_neve/bonecodeneve.png")]
			private static const i4_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/boneco_neve/bonecodeneve.xml", mimeType = "application/octet-stream")]
			private static const i4_xml:Class;
			//cadeira
			[Embed(source = "../../assets/Ferramenta/itens/cadeira/cadeira.png")]
			private static const i5_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/cadeira/cadeira.xml", mimeType = "application/octet-stream")]
			private static const i5_xml:Class;
			//cadeira madeira
			[Embed(source = "../../assets/Ferramenta/itens/cadeira_madeira/cadeiramadeira.png")]
			private static const i6_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/cadeira_madeira/cadeiramadeira.xml", mimeType = "application/octet-stream")]
			private static const i6_xml:Class;
			// candelabro
			[Embed(source = "../../assets/Ferramenta/itens/candelabro/candelabro.png")]
			private static const i7_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/candelabro/candelabro.xml", mimeType = "application/octet-stream")]
			private static const i7_xml:Class;
			// carrinho mercado
			[Embed(source = "../../assets/Ferramenta/itens/carrinho_mercado/carrinhomercado.png")]
			private static const i8_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/carrinho_mercado/carrinhomercado.xml", mimeType = "application/octet-stream")]
			private static const i8_xml:Class;
			//celular 
			[Embed(source = "../../assets/Ferramenta/itens/celular/celular.png")]
			private static const i9_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/celular/celular.xml", mimeType = "application/octet-stream")]
			private static const i9_xml:Class;
			//computador
			[Embed(source = "../../assets/Ferramenta/itens/computador/computador.png")]
			private static const i10_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/computador/computador.xml", mimeType = "application/octet-stream")]
			private static const i10_xml:Class;
			// escorregador
			[Embed(source = "../../assets/Ferramenta/itens/escorregador/escorregador.png")]
			private static const i11_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/escorregador/escorregador.xml", mimeType = "application/octet-stream")]
			private static const i11_xml:Class;
			// fantasma
			[Embed(source = "../../assets/Ferramenta/itens/fantasma/fantasma.png")]
			private static const i12_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/fantasma/fantasma.xml", mimeType = "application/octet-stream")]
			private static const i12_xml:Class;
			// gangorra
			[Embed(source = "../../assets/Ferramenta/itens/gangorra/gangorra.png")]
			private static const i13_img:Class;
			[Embed(source="../../assets/Ferramenta/itens/gangorra/gangorra.xml", mimeType = "application/octet-stream")]
			private static const i13_xml:Class;
			//guarda chuva aberto
			[Embed(source = "../../assets/Ferramenta/itens/guarda_chuva_aberto/guardachuvaaberto.png")]
			private static const i14_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/guarda_chuva_aberto/guardachuvaaberto.xml", mimeType = "application/octet-stream")]
			private static const i14_xml:Class;
			// guarda chuva fechado
			[Embed(source = "../../assets/Ferramenta/itens/guarda_chuva_fechado/guardachuvafechado.png")]
			private static const i15_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/guarda_chuva_fechado/guardachuvafechado.xml", mimeType = "application/octet-stream")]
			private static const i15_xml:Class;
			// mesa madeira
			[Embed(source = "../../assets/Ferramenta/itens/mesa_madeira/mesamadeira.png")]
			private static const i16_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/mesa_madeira/mesamadeira.xml", mimeType = "application/octet-stream")]
			private static const i16_xml:Class;
			// mesa menina
			[Embed(source = "../../assets/Ferramenta/itens/mesa_menina/mesamenina.png")]
			private static const i17_img:Class;
			[Embed(source="../../assets/Ferramenta/itens/mesa_menina/mesamenina.xml", mimeType = "application/octet-stream")]
			private static const i17_xml:Class;
			// pa
			[Embed(source="../../assets/Ferramenta/itens/pa/pa.png")]
			private static const i18_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/pa/pa.xml", mimeType = "application/octet-stream")]
			private static const i18_xml:Class;
			// pneu
			[Embed(source = "../../assets/Ferramenta/itens/pneu/pneu.png")]
			private static const i19_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/pneu/pneu.xml", mimeType = "application/octet-stream")]
			private static const i19_xml:Class;
			// poltrona
			[Embed(source = "../../assets/Ferramenta/itens/poltrona/poltrona.png")]
			private static const i20_img:Class;
			[Embed(source="../../assets/Ferramenta/itens/poltrona/poltrona.xml", mimeType = "application/octet-stream")]
			private static const i20_xml:Class;
			// poste
			[Embed(source = "../../assets/Ferramenta/itens/poste/poste.png")]
			private static const i21_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/poste/poste.xml", mimeType = "application/octet-stream")]
			private static const i21_xml:Class;
			//regador
			[Embed(source = "../../assets/Ferramenta/itens/regador/regador.png")]
			private static const i22_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/regador/regador.xml", mimeType = "application/octet-stream")]
			private static const i22_xml:Class;
			// semaforo
			[Embed(source = "../../assets/Ferramenta/itens/semaforo/semaforo.png")]
			private static const i23_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/semaforo/semaforo.xml", mimeType = "application/octet-stream")]
			private static const i23_xml:Class;
			//skate
			[Embed(source = "../../assets/Ferramenta/itens/skate/skate.png")]
			private static const i24_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/skate/skate.xml", mimeType = "application/octet-stream")]
			private static const i24_xml:Class;
			// sorvete
			[Embed(source = "../../assets/Ferramenta/itens/sorvete/sorvete.png")]
			private static const i25_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/sorvete/sorvete.xml", mimeType = "application/octet-stream")]
			private static const i25_xml:Class;
			//tablet
			[Embed(source = "../../assets/Ferramenta/itens/tablet/tablet.png")]
			private static const i26_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/tablet/tablet.xml", mimeType = "application/octet-stream")]
			private static const i26_xml:Class;
			// treno
			[Embed(source="../../assets/Ferramenta/itens/treno/treno.png")]
			private static const i27_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/treno/treno.xml", mimeType = "application/octet-stream")]
			private static const i27_xml:Class;
			// trenzinho
			[Embed(source = "../../assets/Ferramenta/itens/trenzinho/trem.png")]
			private static const i28_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/trenzinho/trem.xml", mimeType = "application/octet-stream")]
			private static const i28_xml:Class;
			// vaso
			[Embed(source = "../../assets/Ferramenta/itens/vaso/vaso.png")]
			private static const i29_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/vaso/vaso.xml", mimeType = "application/octet-stream")]
			private static const i29_xml:Class;
			// ventilador
			[Embed(source = "../../assets/Ferramenta/itens/ventilador/ventilador.png")]
			private static const i30_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/ventilador/ventilador.xml", mimeType = "application/octet-stream")]
			private static const i30_xml:Class;
			//violao
			[Embed(source = "../../assets/Ferramenta/itens/violão/violao.png")]
			private static const i31_img:Class;
			[Embed(source="../../assets/Ferramenta/itens/violão/violao.xml", mimeType = "application/octet-stream")]
			private static const i31_xml:Class;
			//os THUMBS dos itens==========================================
			[Embed(source = "../../assets/Ferramenta/itens/abobora/thumb.png")]
			private static const ti0_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/bicicleta/thumb.png")]
			private static const ti1_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/boia_pato/thumb.png")]
			private static const ti2_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/bola_futebol/thumb.png")]
			private static const ti3_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/boneco_neve/thumb.png")]
			private static const ti4_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/cadeira/thumb.png")]
			private static const ti5_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/cadeira_madeira/thumb.png")]
			private static const ti6_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/candelabro/thumb.png")]
			private static const ti7_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/carrinho_mercado/thumb.png")]
			private static const ti8_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/celular/thumb.png")]
			private static const ti9_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/computador/thumb.png")]
			private static const ti10_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/escorregador/thumb.png")]
			private static const ti11_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/fantasma/thumb.png")]
			private static const ti12_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/gangorra/thumb.png")]
			private static const ti13_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/guarda_chuva_aberto/thumb.png")]
			private static const ti14_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/guarda_chuva_fechado/thumb.png")]
			private static const ti15_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/mesa_madeira/thumb.png")]
			private static const ti16_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/mesa_menina/thumb.png")]
			private static const ti17_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/pa/thumb.png")]
			private static const ti18_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/pneu/thumb.png")]
			private static const ti19_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/poltrona/thumb.png")]
			private static const ti20_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/poste/thumb.png")]
			private static const ti21_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/regador/thumb.png")]
			private static const ti22_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/semaforo/thumb.png")]
			private static const ti23_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/skate/thumb.png")]
			private static const ti24_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/sorvete/thumb.png")]
			private static const ti25_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/tablet/thumb.png")]
			private static const ti26_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/treno/thumb.png")]
			private static const ti27_img:Class;
			[Embed(source="../../assets/Ferramenta/itens/trenzinho/thumb.png")]
			private static const ti28_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/vaso/thumb.png")]
			private static const ti29_img:Class;
			[Embed(source = "../../assets/Ferramenta/itens/ventilador/thumb.png")]
			private static const ti30_img:Class;
			[Embed(source="../../assets/Ferramenta/itens/violão/thumb.png")]
			private static const ti31_img:Class;
			
		//====PERSONAGENS=======================================================
			//belinha
			[Embed(source = "../../assets/Ferramenta/Personagens/Belinha/belinha.png")]
			private static const p0_img:Class;
			[Embed(source = "../../assets/Ferramenta/Personagens/Belinha/belinha.xml", mimeType = "application/octet-stream")]
			private static const p0_xml:Class;
			[Embed(source = "../../assets/Ferramenta/Personagens/Belinha/belinhaThumb.PNG")]
			private static const tp0_img:Class;
			//cadu
			[Embed(source = "../../assets/Ferramenta/Personagens/Cadu/cadu.png")]
			private static const p1_img:Class;
			[Embed(source = "../../assets/Ferramenta/Personagens/Cadu/cadu.xml", mimeType = "application/octet-stream")]
			private static const p1_xml:Class;
			[Embed(source = "../../assets/Ferramenta/Personagens/Cadu/caduThumb.PNG")]
			private static const tp1_img:Class;
			//chico
			[Embed(source = "../../assets/Ferramenta/Personagens/Chico/chico.png")]
			private static const p2_img:Class;
			[Embed(source = "../../assets/Ferramenta/Personagens/Chico/chico.xml", mimeType = "application/octet-stream")]
			private static const p2_xml:Class;
			[Embed(source = "../../assets/Ferramenta/Personagens/Chico/chicoThumb.PNG")]
			private static const tp2_img:Class;
			//PfBia
			[Embed(source = "../../assets/Ferramenta/Personagens/ProfBia/ProfBia.png")]
			private static const p3_img: Class;
			[Embed(source = "../../assets/Ferramenta/Personagens/ProfBia/ProfBia.xml", mimeType = "application/octet-stream")]
			private static const p3_xml:Class;
			[Embed(source = "../../assets/Ferramenta/Personagens/ProfBia/thumbBia.png")]
			private static const tp3_img:Class;
			//Sofia
			[Embed(source = "../../assets/Ferramenta/Personagens/Sofia/sofia.png")]
			private static const p4_img:Class;
			[Embed(source = "../../assets/Ferramenta/Personagens/Sofia/sofia.xml", mimeType = "application/octet-stream")]
			private static const p4_xml:Class;
			[Embed(source = "../../assets/Ferramenta/Personagens/Sofia/SofiaThumb.PNG")]
			private static const tp4_img:Class;
			
		//============BALAO========================================================
			[Embed(source = "../../assets/Ferramenta/balaofala/Fala/balaofala.png")]
			private static const b0_img:Class;
			[Embed(source = "../../assets/Ferramenta/balaofala/Fala/balaofaladirecao.png")]
			private static const bd0_img:Class;
			[Embed(source = "../../assets/Ferramenta/balaofala/Fala/balaofaladirecaoBack.png")]
			private static const bdf0_img:Class;
		//--------------------------------------------------------------------------------------------------------------------------------
		
		
		
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
			
			if(dictionaryTexture[_nome] == undefined)
			{
				var BMP:Bitmap = new Assets[_nome+"_img"]();
				dictionaryTexture[_nome] = Texture.fromBitmap(BMP);
				
			}
			return dictionaryTexture[_nome];
		}
		
		///
		public static function getAtlas(_nome:String): TextureAtlas
		{
			var TEXTURE:Texture = getTexture(_nome);
			var XMLs:XML = XML(new Assets[_nome+"_xml"]());
			dictionaryAtlas[_nome] = new TextureAtlas(TEXTURE, XMLs);
			
			return dictionaryAtlas[_nome];
		}
		
	}

}