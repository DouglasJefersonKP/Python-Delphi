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
    //By Douglas Jeferson
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
  AliquotaInterna, AliquotaExterna: Integer;
  DecimaEx, DecimaInt, IcmsEx, vlrNota, result, BaseCalc1, BaseCalc2, IcmsInt, DifalInt, Decima: Double;
begin
  AliquotaInterna := StrToInt(edtAliquotaInterna.Text);
  AliquotaExterna := StrToInt(edtAliquotaExterna.Text);

  if AliquotaInterna > AliquotaExterna then
  //By Douglas Jeferson
  begin
    if cbBase.Checked then
    begin
      DecimaEx := AliquotaExterna / 100;
      DecimaInt := AliquotaInterna / 100;
      IcmsEx := StrToFloat(edtValorNota.Text) * DecimaEx;
      BaseCalc1 := StrToFloat(edtValorNota.Text) - IcmsEx;
      BaseCalc2 := BaseCalc1 / (1 - DecimaInt);
      IcmsInt := BaseCalc2 * DecimaInt;
      DifalInt := IcmsInt - IcmsEx;
      edtResult.Text := FormatFloat('#.00', DifalInt);
      ShowMessage(edtResult.Text);
      //By Douglas Jeferson
    end
    else
    begin
      Decima := (AliquotaInterna / 100) - (AliquotaExterna / 100);
      vlrNota := StrToFloat(edtValorNota.Text);
      result := vlrNota * Decima;
      edtResult.Text := FormatFloat('#.00', result);
      ShowMessage(edtResult.Text);
    end;
  end
  else
    showMessage('Alíquota Interna menor que Alíquota Externa');
end;
                                                     //By Douglas Jeferson
procedure TfrmDifal.FormCreate(Sender: TObject);
begin
 ShowMessage('Bem vindo a Calculadora Difal, feita por Douglas.')
 //By Douglas Jeferson
end;

end.
