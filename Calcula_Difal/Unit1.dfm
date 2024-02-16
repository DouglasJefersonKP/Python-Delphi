object tfmDifal: TtfmDifal
  Left = 0
  Top = 0
  Caption = 'tfmDifal'
  ClientHeight = 241
  ClientWidth = 491
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object edtValorNota: TEdit
    Left = 153
    Top = 32
    Width = 121
    Height = 23
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 0
    Text = '0'
  end
  object edtAliquotaInterna: TEdit
    Left = 153
    Top = 80
    Width = 57
    Height = 23
    ImeName = 'Portuguese (Brazilian ABNT)'
    NumbersOnly = True
    TabOrder = 1
    Text = '0'
  end
  object cbBase: TCheckBox
    Left = 376
    Top = 35
    Width = 97
    Height = 17
    Caption = 'Base Dupla'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
  end
  object edtAliquotaExterna: TEdit
    Left = 153
    Top = 120
    Width = 57
    Height = 23
    ImeName = 'Portuguese (Brazilian ABNT)'
    NumbersOnly = True
    TabOrder = 3
    Text = '0'
  end
  object btnCalcula: TButton
    Left = 376
    Top = 119
    Width = 75
    Height = 25
    Caption = 'Calcular'
    DisabledImageName = 'btnCalcula'
    TabOrder = 4
    OnClick = btnCalculaClick
  end
  object stcNota: TStaticText
    Left = 24
    Top = 32
    Width = 63
    Height = 19
    Caption = 'Valor Nota:'
    TabOrder = 5
  end
  object stcInt: TStaticText
    Left = 24
    Top = 80
    Width = 92
    Height = 19
    Caption = 'Al'#237'quota Interna:'
    TabOrder = 6
  end
  object stcExt: TStaticText
    Left = 24
    Top = 119
    Width = 123
    Height = 19
    Caption = 'Al'#237'quota Interestadual:'
    TabOrder = 7
  end
  object edtResult: TEdit
    Left = 153
    Top = 159
    Width = 57
    Height = 23
    Enabled = False
    ImeName = 'Portuguese (Brazilian ABNT)'
    NumbersOnly = True
    TabOrder = 8
  end
  object stcResult: TStaticText
    Left = 24
    Top = 159
    Width = 59
    Height = 19
    Caption = 'Resultado:'
    TabOrder = 9
  end
end
