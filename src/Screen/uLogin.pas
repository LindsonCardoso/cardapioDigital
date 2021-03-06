unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniButton, uniGUIBaseClasses, uniPanel, unimPanel, unimButton, uniEdit,
  unimEdit, uniImage, unimImage;

type
  TUnimLoginForm1 = class(TUnimLoginForm)
    pnl1: TUnimPanel;
    img1: TUnimImage;
    btnEntrar: TUnimButton;
    UnimPanel1: TUnimPanel;
    UnimPanel2: TUnimPanel;
    edtCodigo: TUnimEdit;
    edtSenha: TUnimEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UnimLoginForm1: TUnimLoginForm1;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function UnimLoginForm1: TUnimLoginForm1;
begin
  Result := TUnimLoginForm1(UniMainModule.GetFormInstance(TUnimLoginForm1));
end;

initialization
  RegisterAppFormClass(TUnimLoginForm1);

end.
