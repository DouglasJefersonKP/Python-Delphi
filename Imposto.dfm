object frmImposto: TfrmImposto
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Calcula Imposto'
  ClientHeight = 515
  ClientWidth = 1073
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
  object SpeedButton1: TSpeedButton
    Left = 429
    Top = 337
    Width = 26
    Height = 29
    Cursor = crHelp
    Caption = '?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    StyleName = 'Windows'
    OnClick = SpeedButton1Click
  end
  object btnCalcular: TButton
    Left = 21
    Top = 337
    Width = 402
    Height = 29
    Cursor = crHandPoint
    Caption = 'Calcular'
    TabOrder = 0
    StyleName = 'Windows'
    OnClick = btnCalcularClick
  end
  object chDesconto: TCheckBox
    AlignWithMargins = True
    Left = 332
    Top = 114
    Width = 148
    Height = 23
    Caption = 'Percentual de Desconto'
    TabOrder = 1
    OnClick = chDescontoClick
  end
  object chFora: TCheckBox
    AlignWithMargins = True
    Left = 332
    Top = 140
    Width = 113
    Height = 24
    Caption = 'Calcular por Fora'
    TabOrder = 2
    OnClick = chForaClick
  end
  object chPC: TCheckBox
    AlignWithMargins = True
    Left = 332
    Top = 84
    Width = 85
    Height = 30
    Caption = 'Pis/Cofins'
    TabOrder = 3
    OnClick = chPCClick
  end
  object edtCofins: TEdit
    Left = 142
    Top = 300
    Width = 36
    Height = 23
    TabOrder = 4
    Text = '0'
    Visible = False
  end
  object edtDesc: TEdit
    Left = 152
    Top = 218
    Width = 121
    Height = 23
    TabOrder = 5
    Text = '0'
  end
  object edtDesp: TEdit
    Left = 152
    Top = 174
    Width = 121
    Height = 23
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 6
    Text = '0'
  end
  object edtExt: TEdit
    Left = 152
    Top = 259
    Width = 121
    Height = 23
    TabOrder = 7
    Text = '0'
    Visible = False
  end
  object edtFrete: TEdit
    Left = 152
    Top = 128
    Width = 121
    Height = 23
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 8
    Text = '0'
  end
  object edtInt: TEdit
    Left = 152
    Top = 259
    Width = 121
    Height = 23
    TabOrder = 9
    Text = '0'
  end
  object edtPDesc: TEdit
    Left = 199
    Top = 218
    Width = 121
    Height = 23
    ImeName = 'Portuguese (Brazilian ABNT)'
    NumbersOnly = True
    TabOrder = 10
    Text = '0'
    Visible = False
  end
  object edtPis: TEdit
    Left = 53
    Top = 300
    Width = 36
    Height = 23
    TabOrder = 11
    Text = '0'
    Visible = False
  end
  object edtVlrOp: TEdit
    Left = 152
    Top = 87
    Width = 121
    Height = 23
    TabOrder = 12
    Text = '0'
  end
  object pnlBaseCalc1: TPanel
    Left = 289
    Top = 415
    Width = 116
    Height = 25
    BorderStyle = bsSingle
    Caption = '0'
    TabOrder = 13
  end
  object pnlCResultado: TPanel
    Left = 152
    Top = 381
    Width = 53
    Height = 25
    BorderStyle = bsSingle
    Caption = '0'
    TabOrder = 14
    Visible = False
  end
  object pnlPresultado: TPanel
    Left = 47
    Top = 381
    Width = 52
    Height = 25
    BorderStyle = bsSingle
    Caption = '0'
    TabOrder = 15
    Visible = False
  end
  object pnlResultado: TPanel
    Left = 88
    Top = 415
    Width = 124
    Height = 25
    BorderStyle = bsSingle
    Caption = '0'
    TabOrder = 16
  end
  object stcC: TStaticText
    Left = 95
    Top = 302
    Width = 41
    Height = 19
    Caption = 'Cofins:'
    TabOrder = 17
    Visible = False
  end
  object stcCofins: TStaticText
    Left = 105
    Top = 381
    Width = 41
    Height = 19
    Caption = 'Cofins:'
    TabOrder = 18
    Visible = False
  end
  object stcDesc: TStaticText
    Left = 21
    Top = 218
    Width = 57
    Height = 19
    Caption = 'Desconto:'
    TabOrder = 19
  end
  object stcDesp: TStaticText
    Left = 21
    Top = 174
    Width = 55
    Height = 19
    Caption = 'Despesas:'
    TabOrder = 20
  end
  object stcExt: TStaticText
    Left = 21
    Top = 263
    Width = 94
    Height = 19
    Caption = 'Al'#237'quota Externa:'
    TabOrder = 21
    Visible = False
  end
  object stcFrete: TStaticText
    Left = 21
    Top = 128
    Width = 33
    Height = 19
    Caption = 'Frete:'
    TabOrder = 22
  end
  object stcIcms: TStaticText
    Left = 219
    Top = 420
    Width = 65
    Height = 19
    Caption = 'Base  ICMS:'
    TabOrder = 23
  end
  object stcInterna: TStaticText
    Left = 21
    Top = 263
    Width = 92
    Height = 19
    Caption = 'Al'#237'quota Interna:'
    TabOrder = 24
  end
  object stcP: TStaticText
    Left = 19
    Top = 381
    Width = 22
    Height = 19
    Caption = 'Pis:'
    TabOrder = 25
    Visible = False
  end
  object stcPDesc: TStaticText
    Left = 21
    Top = 218
    Width = 132
    Height = 19
    Caption = 'Percentual de Desconto:'
    TabOrder = 26
    Visible = False
  end
  object stcPis: TStaticText
    Left = 21
    Top = 302
    Width = 22
    Height = 19
    Caption = 'Pis:'
    TabOrder = 27
    Visible = False
  end
  object stcResultado: TStaticText
    Left = 18
    Top = 421
    Width = 64
    Height = 19
    Caption = 'ICMS Total:'
    TabOrder = 28
  end
  object stcVlrNota: TStaticText
    Left = 21
    Top = 87
    Width = 88
    Height = 19
    Caption = 'Valor Opera'#231#227'o:'
    TabOrder = 29
  end
  object StaticText1: TStaticText
    Left = 18
    Top = 24
    Width = 296
    Height = 49
    HelpType = htKeyword
    Caption = 'CALCULA SUPORTE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 30
  end
end
