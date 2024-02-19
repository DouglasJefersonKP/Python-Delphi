unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,  CalculaDifal,  Imposto, Produto, consultaHistorico,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    MenuEdit: TMainMenu;
    Sair1: TMenuItem;
    calculaDifal1: TMenuItem;
    Image1: TImage;
    Imposto: TMenuItem;
    mCad: TMenuItem;
    mProduto: TMenuItem;
    mHist: TMenuItem;
    procedure calculaDifal1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImpostoClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure mProdutoClick(Sender: TObject);
    procedure mHistClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CalculaDifalForm : TfrmCalculaDifal;
    ImpostoForm : TfrmImposto;
    ProdutoForm : TfrmProduto;
    HistoricoForm :TfrmHistorico;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.calculaDifal1Click(Sender: TObject);
begin
  if CalculaDifalForm = nil then
  begin
    CalculaDifalForm := TfrmCalculaDifal.Create(Self);
    CalculaDifalForm.Show;
  end
  else
  begin
  CalculaDifalForm.BringToFront;
  end;
end;


procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if Application.MessageBox('Deseja realmente fechar o Sistema?','Confirmação',  MB_ICONQUESTION+MB_YESNO) = mrYes then
 begin
    if (CalculaDifalForm = nil) and (ImpostoForm = nil) and (ProdutoForm = nil) and (HistoricoForm = nil) then
      begin
        Application.Terminate
      end
    else
      begin
        Application.MessageBox('Para fechar o sistema você precisa fechar as telas abertas','Fechar',MB_ICONEXCLAMATION+MB_OK);
        Action := TCloseAction.caNone;
      end;
 end
 else
 begin
   Action := TCloseAction.caNone;
 end;
end;

procedure TfrmPrincipal.ImpostoClick(Sender: TObject);
begin
  if ImpostoForm = nil then
  begin
    ImpostoForm := TfrmImposto.Create(self);
    ImpostoForm.Show;
  end
  else
  begin
  ImpostoForm.BringToFront;
  end;
end;

procedure TfrmPrincipal.mHistClick(Sender: TObject);
begin
  if HistoricoForm = nil then
  begin
    HistoricoForm := TfrmHistorico.Create(self);
    HistoricoForm.Show;
  end
  else
  begin
    HistoricoForm.BringToFront;
  end;
end;

procedure TfrmPrincipal.mProdutoClick(Sender: TObject);
begin
    if ProdutoForm = nil then
    begin
      ProdutoForm := TfrmProduto.Create(self);
      ProdutoForm.Show;
    end
    else
    begin
      ProdutoForm.BringToFront;
    end;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
    if Application.MessageBox('Deseja realmente fechar o Sistema?','Confirmação',  MB_ICONQUESTION+MB_YESNO) = mrYes then
 begin
    if (CalculaDifalForm = nil) and (ImpostoForm = nil) and (ProdutoForm = nil) and (HistoricoForm = nil) then
      begin
        Application.Terminate
      end
    else
      begin
        Application.MessageBox('Para fechar o sistema você precisa fechar as telas abertas','Fechar',MB_ICONEXCLAMATION+MB_OK);
      end;
 end
end;

end.
