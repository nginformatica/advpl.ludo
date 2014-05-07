#INCLUDE "PROTHEUS.CH"

/*/
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
�������������������������������������������������������������������������Ŀ��
���Funcao    �Ludo       �Autor � Felipe Nathan Welter  � Data �08/09/2010���
���          �           �      � Vitor Emanuel Batista �      �          ���
�������������������������������������������������������������������������Ĵ��
���Descricao �Jogo grafico de Ludo                                        ���
�������������������������������������������������������������������������Ĵ��
��� Uso      � GENERICO                                                   ���
��������������������������������������������������������������������������ٱ�
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
/*/
User Function Ludo()
	Local oDlg,oTLudo,oSay


	Local cTitle := "LUDO [FELIPE NATHAN WELTER / VITOR EMANUEL BATISTA]"

	//Variaveis de Largura/Altura da Janela
	Local nAltura    := 500
	Local nLargura   := 760
	
	Set Key VK_F9 To oTLudo:NewGame(oPlayer1,oPlayer2,oPlayer3,oPlayer4)
	
	n := 1
	Define Dialog oDlg Title cTitle From 0,0 To nAltura,nLargura COLOR CLR_BLACK, CLR_WHITE Pixel //STYLE nOr(DS_SYSMODAL,WS_MAXIMIZEBOX,WS_POPUP)

		oDlg:lEscClose := .F.
		
		oTLudo := TLudo():New(0,0,(nLargura-15)/2,(nAltura-30)/2,oDlg)
			oTLudo:PrintDice(oTLudo:nValueDice)
		
	ACTIVATE DIALOG oDlg CENTERED


Return