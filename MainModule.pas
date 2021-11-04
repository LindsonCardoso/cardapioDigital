unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TUniMainModule = class(TUniGUIMainModule)
    con1: TFDConnection;
    qryCardapio: TFDQuery;
    qryCardapiopro_id: TFDAutoIncField;
    qryCardapiopro_descricao: TStringField;
    qryCardapiopro_valor: TBCDField;
    qryCardapiopro_valorcusto: TBCDField;
    qryCardapiopro_estoqueminimo: TBCDField;
    qryCardapiopro_ncm: TIntegerField;
    qryCardapiopro_cest: TIntegerField;
    qryCardapiopro_tributacao: TStringField;
    qryCardapiogrp_id: TIntegerField;
    qryCardapiogrs_id: TIntegerField;
    qryCardapiopro_referencia: TIntegerField;
    dsCardapio: TDataSource;
    qryAuxiliar: TFDQuery;
    FDAutoIncField1: TFDAutoIncField;
    StringField1: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.