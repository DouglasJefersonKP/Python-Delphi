unit consultaHistorico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmHistorico = class(TForm)
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHistorico: TfrmHistorico;

implementation

{$R *.dfm}

uses Principal, FireDAC.Comp.Client, DMc;

procedure TfrmHistorico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.HistoricoForm := nil;
  Action := CaFree;
end;

end.
