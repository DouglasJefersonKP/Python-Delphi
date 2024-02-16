unit DifalCC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmDifal = class(TForm)
    edtAliquotaInterna: TEdit;
    edtAliquotaExterna: TEdit;
    edtValorNota: TEdit;
    cbBase: TCheckBox;
    btnCalcula: TButton;
    edtResult: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    procedure FormCreate(Sender: TObject);
    procedure btnCalculaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDifal: TfrmDifal;

implementation

{$R *.dfm}

procedure TfrmDifal.btnCalculaClick(Sender: TObject);
 var
    AliquotaInterna: integer;
    AliquotaExterna: Integer;
    DecimaEx: Double;
    DecimaInt: Double;
    IcmsEx: Double;
    vlrNota: Double;
    result: double;
    BaseCalc1:  Double;
    BaseCalc2:  Double;
    IcmsInt: Double;
    DifalInt: Double;
    Decima: Double;
      //By Douglas Jeferson
begin

  AliquotaInterna := strToInt(edtAliquotaInterna.Text);
  AliquotaExterna := strToInt(edtAliquotaExterna.Text);
  //By Douglas Jeferson

    if cbBase.Checked then
      begin
        DecimaEx := AliquotaExterna/100;
        DecimaInt := AliquotaInterna/100;
        IcmsEx := StrToFloat(edtValorNota.Text) * DecimaEx;
        BaseCalc1 := StrToFloat(edtValorNota.Text) - IcmsEx;
        BaseCalc2 := BaseCalc1/(1 - DecimaInt);
        IcmsInt := BaseCalc2 * DecimaInt;
        DifalInt :=  IcmsInt - IcmsEx;
        edtResult.Text := FormatFloat('#.00',DifalInt);
        ShowMessage(edtResult.text);
      end
      else
      begin
        if AliquotaInterna > AliquotaExterna then
          begin
            Decima := (AliquotaInterna/100) - (AliquotaExterna/100);
            vlrNota := StrToFloat(edtValorNota.Text);
            result := vlrNota * Decima;
            edtResult.Text := FormatFloat('#.00',result);
            ShowMessage(edtResult.text);
            //By Douglas Jeferson
          end
          else
          ShowMessage('Sua Alíquota Interna é menor que sua externa');
      end;
end;

procedure TfrmDifal.FormCreate(Sender: TObject);
begin
 ShowMessage('Bem vindo a Calculadora Difal, feita por Douglas.')
end;

end.
