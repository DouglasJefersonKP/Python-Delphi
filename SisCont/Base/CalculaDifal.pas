unit CalculaDifal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
    TfrmCalculaDifal = class(TForm)
    btnCalcular: TBitBtn;
    pnlResultado: TPanel;
    cbD: TCheckBox;
    cbDD: TCheckBox;
    stcVlrNota: TStaticText;
    stcAlqInterna: TStaticText;
    stcAlqExterna: TStaticText;
    edtVlrNota: TEdit;
    edtAliqInt: TEdit;
    edtAliqExt: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCalcularClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalculaDifal: TfrmCalculaDifal;

implementation

{$R *.dfm}

uses Principal;

procedure TfrmCalculaDifal.btnCalcularClick(Sender: TObject);
  var
    AliquotaInterna, AliquotaExterna: Integer;
    DecimaEx, DecimaInt, IcmsEx, vlrNota, result, BaseCalc1, BaseCalc2, IcmsInt, DifalInt, Decima: Double;
begin
  AliquotaInterna := StrToInt(edtAliqInt.Text);
  AliquotaExterna := StrToInt(edtAliqExt.Text);

  if AliquotaInterna > AliquotaExterna then
  begin
    if cbD.Checked then
    begin
      DecimaEx := AliquotaExterna / 100;
      DecimaInt := AliquotaInterna / 100;
      IcmsEx := StrToFloat(edtVlrNota.Text) * DecimaEx;
      BaseCalc1 := StrToFloat(edtVlrNota.Text) - IcmsEx;
      BaseCalc2 := BaseCalc1 / (1 - DecimaInt);
      IcmsInt := BaseCalc2 * DecimaInt;
      DifalInt := IcmsInt - IcmsEx;
      pnlResultado.Caption := FormatFloat('#.00', DifalInt);
    end
    else
    begin
      Decima := (AliquotaInterna / 100) - (AliquotaExterna / 100);
      vlrNota := StrToFloat(edtVlrNota.Text);
      result := vlrNota * Decima;
      pnlResultado.Caption := FormatFloat('#.00', result);
    end;
  end
  else
  begin
    ShowMessage('Sua Aliquota Interna é menor que sua Externa')
  end;

end;

procedure TfrmCalculaDifal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     frmPrincipal.CalculaDifalForm := nil;
     Action := caFree;
end;

procedure TfrmCalculaDifal.SpeedButton2Click(Sender: TObject);
begin
  if Application.MessageBox('Duvidas ou erros falar com Técnico Douglas','Duvidas',MB_ICONQUESTION+MB_OK) = mrOK then
  begin
  end;
end;

end.
