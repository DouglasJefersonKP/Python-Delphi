object frmHistorico: TfrmHistorico
  Left = 0
  Top = 0
  Caption = 'Hist'#243'rico Imposto'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 248
    Top = 8
    Width = 368
    Height = 409
    DataSource = dm.dsImposto
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
end
