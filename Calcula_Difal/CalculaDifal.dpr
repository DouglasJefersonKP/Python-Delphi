program CalculaDifal;

uses
  Vcl.Forms,
  DifalCC in 'DifalCC.pas' {frmDifal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDifal, frmDifal);
  Application.Run;
end.
