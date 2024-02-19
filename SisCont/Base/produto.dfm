object frmProduto: TfrmProduto
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produto'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  TextHeight = 15
  object lblCodigo: TLabel
    Left = 8
    Top = 83
    Width = 50
    Height = 21
    Caption = 'C'#243'digo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 160
    Top = 83
    Width = 67
    Height = 21
    Caption = 'Descri'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 147
    Width = 63
    Height = 21
    Caption = 'C'#243'digo 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblUni: TLabel
    Left = 160
    Top = 147
    Width = 58
    Height = 21
    Caption = 'Unidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object stcCadProduto: TStaticText
    Left = 8
    Top = 8
    Width = 316
    Height = 49
    Caption = 'Cadastro de Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object dbCodigo: TDBEdit
    Left = 8
    Top = 110
    Width = 121
    Height = 23
    DataField = 'CODIGO'
    DataSource = dm.dsProduto
    Enabled = False
    TabOrder = 1
  end
  object dbDesc: TDBEdit
    Left = 160
    Top = 110
    Width = 209
    Height = 23
    DataField = 'DESCRICAO'
    DataSource = dm.dsProduto
    Enabled = False
    TabOrder = 2
  end
  object dbCodigo2: TDBEdit
    Left = 8
    Top = 174
    Width = 121
    Height = 23
    DataField = 'CODIGO2'
    DataSource = dm.dsProduto
    Enabled = False
    TabOrder = 3
  end
  object btnIncluir: TButton
    Left = 8
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Incluir'
    TabOrder = 4
    OnClick = btnIncluirClick
  end
  object btnExcluir: TButton
    Left = 89
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 5
  end
  object btnConfirma: TButton
    Left = 170
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    Enabled = False
    TabOrder = 6
    OnClick = btnConfirmaClick
  end
  object btnCancelar: TButton
    Left = 251
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 7
  end
  object cbUnidade: TDBComboBox
    Left = 160
    Top = 174
    Width = 145
    Height = 23
    DataField = 'UNIDADE'
    DataSource = dm.dsProduto
    ImeName = 'Portuguese (Brazilian ABNT)'
    Items.Strings = (
      'UN'
      'MT'
      'LT'
      'KG')
    TabOrder = 8
  end
end
