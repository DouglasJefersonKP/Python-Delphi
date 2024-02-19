unit Imposto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CheckLst, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TfrmImposto = class(TForm)
    stcDesc: TStaticText;
    stcDesp: TStaticText;
    stcFrete: TStaticText;
    stcVlrNota: TStaticText;
    edtVlrOp: TEdit;
    edtFrete: TEdit;
    edtDesp: TEdit;
    edtDesc: TEdit;
    stcResultado: TStaticText;
    pnlResultado: TPanel;
    btnCalcular: TButton;
    chFora: TCheckBox;
    edtExt: TEdit;
    stcExt: TStaticText;
    stcIcms: TStaticText;
    pnlBaseCalc1: TPanel;
    chDesconto: TCheckBox;
    edtPDesc: TEdit;
    stcPDesc: TStaticText;
    chPC: TCheckBox;
    edtPis: TEdit;
    edtCofins: TEdit;
    stcCofins: TStaticText;
    stcPis: TStaticText;
    edtInt: TEdit;
    stcInterna: TStaticText;
    stcP: TStaticText;
    stcC: TStaticText;
    pnlPresultado: TPanel;
    pnlCResultado: TPanel;
    StaticText1: TStaticText;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCalcularClick(Sender: TObject);
    procedure chForaClick(Sender: TObject);
    procedure chDescontoClick(Sender: TObject);
    procedure chPCClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImposto: TfrmImposto;
  AliquotaInterna, BaseCalc1, Resultado, pDesc, pBase, pResultado, Pis, Cofins, piResultado, coResultado: Double;
  ResultadoAliq, ResultadoCalc1: String;

implementation

{$R *.dfm}

uses Principal, FireDAC.Comp.Client, DMc;


procedure TfrmImposto.btnCalcularClick(Sender: TObject);
  var
  iQuery: TFDQuery;
begin
  iQuery := TFDquery.Create(Nil);
  iQuery.Connection := DM.fdConnection;
  try

  iQuery.Close;
  iQuery.SQL.Clear;
  iQuery.Params.Clear;

  iQuery.SQL.Add('INSERT INTO HISTORICO_IMPOSTO(VALOR_OPERACAO,FRETE,DESPESAS,DESCONTO,PERCENTUAL_DESCONTO,PIS,COFINS,DATA,ALIQUOTA_INTERNA,ALIQUOTA_EXTERNA,ICMS_TOTAL,BASE_CAL) VALUES (:VLR_OP,:FRETE,:DESP,:DESC,:PDESC,:PIS,:COFINS,:DATA,:ALIQ_INT,:ALIQ_EXT,:ICMS,:BASE)');
  iQuery.ParamByName('VLR_OP').Value := StrToFloat(edtVlrOp.Text);
  iQuery.ParamByName('FRETE').Value := StrToFloat(edtFrete.Text);
  iQuery.ParamByName('DESP').Value := StrToFloat(edtDesp.Text);
  iQuery.ParamByName('PDESC').value := StrToFloat(edtPDesc.Text);
  iQuery.ParamByName('PIS').Value := StrToFloat(edtPis.Text);
  iQuery.ParamByName('COFINS').Value := StrToFloat(edtCofins.Text);
  iQuery.ParamByName('DATA').AsDateTime := Now;
  iQuery.ParamByName('ALIQ_INT').Value := StrToFloat(edtInt.Text);
  iQuery.ParamByName('ALIQ_EXT').Value := StrToFloat(edtExt.Text);
  iQuery.ParamByName('ICMS').Value := StrToFloat(pnlResultado.Caption);
  iQuery.ParamByName('BASE').Value := StrToFloat(pnlBaseCalc1.Caption);


    ///Validação para pDesconto (Percentual de desconto)///
    if chDesconto.Checked then
    begin
          ///Valida calculo para ICMS Fora do Estado///
          if chFora.Checked then
        begin
          AliquotaInterna := StrToFloat(edtExt.Text)/100;
          pDesc := StrToFloat (edtPDesc.Text)/100;
          BaseCalc1 := StrToFloat(edtVlrOp.text) + StrToFloat(edtFrete.Text) + StrToFloat(edtDesp.Text);
          pBase := pDesc * BaseCalc1;
          pResultado := BaseCalc1 - pBase;
          Resultado := pResultado * AliquotaInterna;
          pnlResultado.Caption := FloatToStr(Resultado);
          pnlBaseCalc1.Caption := FloatToStr(pResultado);

          iQuery.ExecSQL;
          dm.fdImposto.Cancel;
        end
      else
        begin
          AliquotaInterna := StrToFloat(edtInt.Text)/100;
          pDesc := StrToFloat (edtPDesc.Text)/100;
          BaseCalc1 := StrToFloat(edtVlrOp.text) + StrToFloat(edtFrete.Text) + StrToFloat(edtDesp.Text);
          pBase := pDesc * BaseCalc1;
          pResultado := BaseCalc1 - pBase;
          Resultado := pResultado * AliquotaInterna;
          pnlResultado.Caption := FloatToStr(Resultado);
          pnlBaseCalc1.Caption := FloatToStr(pResultado);

          iQuery.ExecSQL;
          dm.fdImposto.Cancel;
        end;
        ///Valida calculo para ICMS Fora do Estado///
    end
    else
      if chFora.Checked then
        begin
          AliquotaInterna := StrToFloat(edtExt.Text)/100;
          BaseCalc1 := StrToFloat(edtVlrOp.text) + StrToFloat(edtFrete.Text) + StrToFloat(edtDesp.Text) - StrToFloat(edtDesc.text);
          Resultado := BaseCalc1 * AliquotaInterna;
          pnlResultado.Caption := FloatToStr(Resultado);
          pnlBaseCalc1.Caption := FloatToStr(BaseCalc1);

          iQuery.ExecSQL;
          dm.fdImposto.Cancel;
        end
      else
        begin
          AliquotaInterna := StrToFloat(edtInt.Text)/100;
          BaseCalc1 := StrToFloat(edtVlrOp.text) + StrToFloat(edtFrete.Text) + StrToFloat(edtDesp.Text) - StrToFloat(edtDesc.text);
          Resultado := BaseCalc1 * AliquotaInterna;
          pnlResultado.Caption := FloatToStr(Resultado);
          pnlBaseCalc1.Caption := FloatToStr(BaseCalc1);

          iQuery.ExecSQL;
          dm.fdImposto.Cancel;
        end;
        ///Validação para pDesconto (Percentual de desconto)///
    if chPC.Checked then
    begin
      ///Calcula Pis/Cofins em cima do Valor da Operação///
      Pis := StrToFloat(edtPis.Text)/100;
      Cofins := StrToFloat(edtCofins.Text)/100;
      piResultado := Pis * StrToFloat(edtVlrOp.Text);
      coResultado := Cofins * StrToFloat(edtVlrOp.Text);
      //------------------------------------------------///
      pnlCResultado.Caption := FloatToStr(coResultado);
      pnlPResultado.Caption := FloatToStr(piResultado);
      ///Calcula Pis/Cofins em cima do Valor da Operação///
      iQuery.ExecSQL;
      dm.fdImposto.Cancel;
    end;
  finally
    iQuery.Free;
  end;

end;

procedure TfrmImposto.chDescontoClick(Sender: TObject);
begin
  ///Valida check box marcada deixando visiveis determinado campo e deixando outros insivies///
  if chDesconto.Checked then
  begin
    stcPDesc.Visible := True;
    edtPDesc.Visible := True;
    stcDesc.Visible := False;
    edtDesc.Visible := False;
  end
  else
  begin
    stcPDesc.Visible := False;
    edtPDesc.Visible := False;
    stcDesc.Visible := True;
    edtDesc.Visible := True;
  end;
  ///Valida check box marcada deixando visiveis determinado campo e deixando outros insivies///
end;

procedure TfrmImposto.chForaClick(Sender: TObject);
begin
  ///Valida check box marcada deixando visiveis determinado campo e deixando outros insivies///
  if chFora.Checked then
  begin
    stcInterna.Visible := False;
    edtInt.Visible := False;
    stcExt.Visible := True;
    edtExt.Visible := True;
    stcExt.BringToFront;
    edtExt.BringToFront;
  end
  else
  begin
    stcInterna.Visible := True;
    edtInt.Visible := True;
    stcExt.Visible := False;
    edtExt.Visible := False;
  end;
  ///Valida check box marcada deixando visiveis determinado campo e deixando outros insivies///
end;

procedure TfrmImposto.chPCClick(Sender: TObject);
begin
  if chPC.Checked then
  begin
  ///Valida check box marcada deixando visiveis determinado campo e deixando outros insivies///
    edtPis.Visible := True;
    stcPis.Visible := True;
    edtCofins.Visible := True;
    stcCofins.Visible := True;
    stcP.Visible := True;
    stcC.Visible := True;
    pnlCResultado.Visible := True;
    pnlPresultado.Visible := True;
  end
  else
  begin
    edtPis.Visible := False;
    stcPis.Visible := False;
    edtCofins.Visible := False;
    stcCofins.Visible := False;
    stcP.Visible := False;
    stcC.Visible := False;
    pnlCResultado.Visible := False;
    pnlPresultado.Visible := False;
  end;
  ///Valida check box marcada deixando visiveis determinado campo e deixando outros insivies///
end;


procedure TfrmImposto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ///Sempre que fechar a tela, seta ela igual a nil, função para poder chamar a mesma novamente na tela principal///
  frmPrincipal.ImpostoForm := nil;
  Action := CaFree;
  ///Sempre que fechar a tela, seta ela igual a nil, função para poder chamar a mesma novamente na tela principal///
end;

procedure TfrmImposto.SpeedButton1Click(Sender: TObject);
begin
  if Application.MessageBox('Duvidas ou erros falar com Técnico Douglas','Duvidas',MB_ICONQUESTION+MB_OK) = mrOK then
  begin
  end;
end;

end.

