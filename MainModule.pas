unit MainModule;

interface

uses
  System.IniFiles, SysUtils, uniGUIMainModule, Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, UniFSConfirm, uniGUIBaseClasses, uniGUIClasses,
  UniFSTheme;

type
  TUniMainModule = class(TUniGUIMainModule)
    con1: TFDConnection;
    qryCardapio: TFDQuery;
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
    FSTheme: TUniFSTheme;
    Mensagem: TUniFSConfirm;
    qryCardapiopro_descricao: TStringField;
    qryCardapiopro_id: TFDAutoIncField;
    qryCardapiopro_valor: TBCDField;
    qryCardapiopro_observacao: TStringField;
    procedure UniGUIMainModuleCreate(Sender: TObject);
    procedure con1BeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    BD_HOST, BD_NOME, BD_PORTA, BD_USUARIO, BD_SENHA : string;
    UsuarioID       : integer;
    UsuarioNome     : string;
    EmpresaTelefone : string;
    UsuarioQuarto   : integer;

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

procedure TUniMainModule.con1BeforeConnect(Sender: TObject);
begin
  {$WARNINGS OFF}
  con1.Params.Values['DATABASE']    := BD_NOME;
  con1.Params.Values['Server']      := BD_HOST;
  con1.Params.Values['User_Name']   := BD_USUARIO;
  con1.Params.Values['Password']    := BD_SENHA;
  con1.Params.Values['Port']        := BD_PORTA;
  {$WARNINGS ON}
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);

var     iniTemp  : Tinifile;
const   inifile = '.\config.ini';

begin

  FSTheme.Aplly;

  iniTemp                   := TIniFile.Create(inifile);
  UniMainModule.BD_HOST     := iniTemp.ReadString('BANCO','HOST','');
  UniMainModule.BD_NOME     := iniTemp.ReadString('BANCO','NOME','');
  UniMainModule.BD_PORTA    := iniTemp.ReadString('BANCO','PORTA','');
  UniMainModule.BD_USUARIO  := iniTemp.ReadString('BANCO','USUARIO','');
  UniMainModule.BD_SENHA    := iniTemp.ReadString('BANCO','SENHA','');

  iniTemp.Free;


end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
