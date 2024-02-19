program Sistema_Contabil_v1;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {frmPrincipal},
  CalculaDifal in 'CalculaDifal.pas' {frmCalculaDifal},
  Imposto in 'Imposto.pas' {frmImposto},
  produto in 'produto.pas' {frmProduto},
  DMc in 'DMc.pas' {dm: TDataModule},
  UnitIni in 'UnitIni.pas',
  consultaHistorico in 'consultaHistorico.pas' {frmHistorico};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmHistorico, frmHistorico);
  Application.Run;
end.
