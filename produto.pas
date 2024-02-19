unit produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls;

type
    TfrmProduto = class(TForm)
    stcCadProduto: TStaticText;
    lblCodigo: TLabel;
    dbCodigo: TDBEdit;
    Label1: TLabel;
    dbDesc: TDBEdit;
    Label2: TLabel;
    dbCodigo2: TDBEdit;
    lblUni: TLabel;
    btnIncluir: TButton;
    btnExcluir: TButton;
    btnConfirma: TButton;
    btnCancelar: TButton;
    cbUnidade: TDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProduto: TfrmProduto;

implementation

{$R *.dfm}




//USES no FireDAC.Comp.Client |
//Funcionalidade: basicamente importará algumas funcionalidades para o
//TFDQuery para conseguir trabalhar corretamente com banco de dados

uses Principal, FireDAC.Comp.Client, DMc;

procedure TfrmProduto.btnConfirmaClick(Sender: TObject);
  var pQuery: TFDQuery;
begin
  pQuery:= TFDQuery.Create(nil);
  pQuery.Connection := Dm.fdConnection;

  try
    ///Reseta toda vez que feito processo de incluir retirando qualquer instancia anterior///
    pQuery.Close;
    pQuery.SQL.Clear;
    pQuery.Params.Clear;
    ///Insert na tabela produto///
    pQuery.SQL.Add('INSERT INTO PRODUTO(CODIGO,DESCRICAO,CODIGO2,UNIDADE,DATA) VALUES (:CODIGO,:DESCRICAO,:CODIGO2,:UNIDADE,:DATA)');
    pQuery.ParamByName('CODIGO').value := dbCodigo.text;
    pQuery.ParamByName('DESCRICAO').Value := dbDesc.Text;
    pQuery.ParamByName('CODIGO2').Value := dbCodigo2.Text;
    pQuery.ParamByName('UNIDADE').Value := cbUnidade.Text;
    pQuery.ParamByName('DATA').AsDateTime := Now;
    //Valida campo//
    if dbCodigo.text = '' then
    begin
      Application.MessageBox('Preencha o campo CODIGO, para continuar!','Preencha o código', MB_ICONEXCLAMATION+MB_OK);
    end;
    if dbDesc.Text = '' then
    begin
      Application.MessageBox('Preencha o campo DESCRIÇÃO, para continuar!','Preencha a descrição', MB_ICONEXCLAMATION+MB_OK);
    end;
    if cbUnidade.Text = '' then
    begin
      Application.MessageBox('Preencha a UNIDADE, para continuar!','Preencha a unidade', MB_ICONEXCLAMATION+MB_OK);
    end;
    if (dbCodigo.Text <> '') and (dbDesc.Text <> '') and (cbUnidade.Text <> '') then
      begin
           btnIncluir.Enabled := True;
           btnExcluir.Enabled := True;

           btnConfirma.Enabled := False;
           btnCancelar.Enabled := True;

           dbDesc.Enabled := False;
           dbCodigo2.Enabled := False;
           cbUnidade.Enabled := False;
           dbCodigo.Enabled := False;

           pQuery.ExecSQL;
           dm.fdProduto.Cancel;
      end;
  finally
     pQuery.Free;
  end;
end;

procedure TfrmProduto.btnIncluirClick(Sender: TObject);
begin
 btnIncluir.Enabled := False;
 btnExcluir.Enabled := False;

 btnConfirma.Enabled := True;
 btnCancelar.Enabled := True;

 dbDesc.Enabled := True;
 dbCodigo2.Enabled := True;
 cbUnidade.Enabled := True;
 dbCodigo.Enabled := True;
end;

procedure TfrmProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ///Sempre que fechar a tela, seta ela igual a nil, função para poder chamar a mesma novamente na tela principal///
  frmPrincipal.ProdutoForm := nil;
  Action := CaFree;
  ///Sempre que fechar a tela, seta ela igual a nil, função para poder chamar a mesma novamente na tela principal///
end;

end.
