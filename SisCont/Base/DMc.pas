unit DMc;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tdm = class(TDataModule)
    fdConnection: TFDConnection;
    fdProduto: TFDTable;
    fdProdutoCODIGO: TIntegerField;
    fdProdutoDESCRICAO: TStringField;
    fdProdutoCODIGO2: TStringField;
    fdTableProduto: TStringField;
    dsProduto: TDataSource;
    fdImposto: TFDTable;
    fdImpostoVALOR_OPERACAO: TFMTBCDField;
    fdImpostoFRETE: TFMTBCDField;
    fdImpostoDESPESAS: TFMTBCDField;
    fdImpostoALIQUOTA_INTERNA: TFMTBCDField;
    fdImpostoALIQUOTA_EXTERNA: TFMTBCDField;
    fdImpostoPERCENTUAL_DESCONTO: TFMTBCDField;
    fdImpostoDESCONTO: TFMTBCDField;
    fdImpostoPIS: TFMTBCDField;
    fdImpostoCOFINS: TFMTBCDField;
    fdImpostoDATA: TDateField;
    fdImpostoHORA: TTimeField;
    fdImpostoICMS_TOTAL: TFMTBCDField;
    fdImpostoBASE_CAL: TFMTBCDField;
    dsImposto: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses UnitIni;


procedure Tdm.DataModuleCreate(Sender: TObject);
begin
   try
   with fdConnection do
    begin
        Params.Clear;
        Params.Values['DriverID']  := 'FB';
        Params.Values['Server'] := TFuncoes.LerIni('FIREBIRD','Server');
        Params.Values['Database'] := TFuncoes.LerIni('FIREBIRD','Database');
        Params.Values['User_name'] := TFuncoes.LerIni('FIREBIRD','User');
        Params.Values['Password'] := TFuncoes.LerIni('FIREBIRD','Password');
        Params.Values['Port'] := TFuncoes.LerIni('FIREBIRD','Port');
            Connected := True;
            fdImposto.Active := True;
            fdProduto.Active :=True;
    end;
 finally

 end;
end;

end.
