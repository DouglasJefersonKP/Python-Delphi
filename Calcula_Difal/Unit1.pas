unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TtfmDifal = class(TForm)
    edtValorNota: TEdit;
    edtAliquotaInterna: TEdit;
    cbBase: TCheckBox;
    edtAliquotaExterna: TEdit;
    btnCalcula: TButton;
    stcNota: TStaticText;
    stcInt: TStaticText;
    stcExt: TStaticText;
    edtResult: TEdit;
      //By Douglas Jeferson
    stcResult: TStaticText;
    procedure btnCalculaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tfmDifal: TtfmDifal;

implementation

{$R *.dfm}

procedure TtfmDifal.btnCalculaClick(Sender: TObject);
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
        BaseCalc2 := BaseCalc1/(1 - DecimaEx);
        IcmsInt := BaseCalc2 * DecimaInt;
        DifalInt :=  IcmsInt - IcmsEx;
        edtResult.text := FloatToStr(DifalInt);
      end
      else
      begin
        if AliquotaInterna > AliquotaExterna then
          begin
            Decima := (AliquotaInterna/100) - (AliquotaExterna/100);
            vlrNota := StrToFloat(edtValorNota.Text);
            result := vlrNota * Decima;
            edtResult.Text := FloatToStr(result);
            ShowMessage(edtResult.text);
            //By Douglas Jeferson
          end
          else
          ShowMessage('Sua Alíquota Interna é menor que sua externa');
      end;




end;

end.
                                    //By Douglas Jeferson
