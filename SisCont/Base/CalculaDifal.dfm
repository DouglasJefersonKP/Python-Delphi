object frmCalculaDifal: TfrmCalculaDifal
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Calcula Difal'
  ClientHeight = 347
  ClientWidth = 601
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
    Left = 504
    Top = 304
    Width = 23
    Height = 22
  end
  object SpeedButton2: TSpeedButton
    Left = 191
    Top = 312
    Width = 38
    Height = 25
    Cursor = crHelp
    Caption = '?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    StyleName = 'Windows'
    OnClick = SpeedButton2Click
  end
  object btnCalcular: TBitBtn
    Left = 8
    Top = 312
    Width = 177
    Height = 25
    Cursor = crHandPoint
    Caption = 'Calcular'
    TabOrder = 0
    StyleName = 'Windows'
    OnClick = btnCalcularClick
  end
  object pnlResultado: TPanel
    Left = 8
    Top = 8
    Width = 402
    Height = 81
    BorderStyle = bsSingle
    Caption = '0'
    Enabled = False
    TabOrder = 1
  end
  object cbD: TCheckBox
    Left = 480
    Top = 8
    Width = 97
    Height = 33
    Caption = 'Base Dupla'
    TabOrder = 2
  end
  object cbDD: TCheckBox
    Left = 480
    Top = 56
    Width = 121
    Height = 33
    Caption = 'Base Dupla + Difal'
    TabOrder = 3
    Visible = False
  end
  object stcVlrNota: TStaticText
    Left = 8
    Top = 120
    Width = 88
    Height = 19
    Caption = 'Valor Opera'#231#227'o:'
    TabOrder = 4
  end
  object stcAlqInterna: TStaticText
    Left = 8
    Top = 160
    Width = 92
    Height = 19
    Caption = 'Al'#237'quota Interna:'
    TabOrder = 5
  end
  object stcAlqExterna: TStaticText
    Left = 8
    Top = 200
    Width = 94
    Height = 19
    Caption = 'Al'#237'quota Externa:'
    TabOrder = 6
  end
  object edtVlrNota: TEdit
    Left = 108
    Top = 120
    Width = 121
    Height = 23
    TabOrder = 7
    Text = '0'
  end
  object edtAliqInt: TEdit
    Left = 108
    Top = 160
    Width = 121
    Height = 23
    NumbersOnly = True
    TabOrder = 8
    Text = '0'
  end
  object edtAliqExt: TEdit
    Left = 108
    Top = 200
    Width = 121
    Height = 23
    ImeName = 'edtAliqExt'
    NumbersOnly = True
    TabOrder = 9
    Text = '0'
  end
end
