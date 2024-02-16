object frmDifal: TfrmDifal
  Left = 0
  Top = 0
  Caption = 'frmDifal'
  ClientHeight = 157
  ClientWidth = 360
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object edtAliquotaInterna: TEdit
    Left = 144
    Top = 48
    Width = 121
    Height = 23
    NumbersOnly = True
    TabOrder = 0
    Text = '0'
  end
  object edtAliquotaExterna: TEdit
    Left = 144
    Top = 88
    Width = 121
    Height = 23
    ImeName = 'Portuguese (Brazilian ABNT)'
    NumbersOnly = True
    TabOrder = 1
    Text = '0'
  end
  object edtValorNota: TEdit
    Left = 144
    Top = 8
    Width = 121
    Height = 23
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 2
    Text = '0'
  end
  object cbBase: TCheckBox
    Left = 271
    Top = 11
    Width = 97
    Height = 17
    Caption = 'Base Dupla'
    TabOrder = 3
  end
  object btnCalcula: TButton
    Left = 271
    Top = 47
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Calcular'
    DisabledImageName = 'btnCalcula'
    DragCursor = crDefault
    TabOrder = 4
    OnClick = btnCalculaClick
  end
  object edtResult: TEdit
    Left = 144
    Top = 126
    Width = 121
    Height = 23
    Enabled = False
    ImeName = 'edtResult'
    TabOrder = 5
    Text = '0'
  end
  object StaticText1: TStaticText
    Left = 16
    Top = 8
    Width = 88
    Height = 19
    Caption = 'Valor Opera'#231#227'o:'
    TabOrder = 6
  end
  object StaticText2: TStaticText
    Left = 16
    Top = 47
    Width = 92
    Height = 19
    Caption = 'Al'#237'quota Interna:'
    TabOrder = 7
  end
  object StaticText3: TStaticText
    Left = 15
    Top = 88
    Width = 123
    Height = 19
    Caption = 'Al'#237'quota Interestadual:'
    TabOrder = 8
  end
  object StaticText4: TStaticText
    Left = 15
    Top = 130
    Width = 59
    Height = 19
    Caption = 'Resultado:'
    TabOrder = 9
  end
end
