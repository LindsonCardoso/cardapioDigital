unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniBasicGrid, uniDBGrid, unimDBListGrid, uniPanel,
  uniHTMLFrame, unimHTMLFrame, Data.DB, Datasnap.DBClient, uniButton, uniBitBtn,
  UniFSButton, UniFSConfirm, unimButton, unimPanel, uniEdit, unimEdit;

type
  TMainmForm = class(TUnimForm)
    dbgCardapio: TUnimDBListGrid;
    UnimHTMLFrame1: TUnimHTMLFrame;
    btnItems: TUnimButton;
    dsRascunho: TDataSource;
    cdsRascunho: TClientDataSet;
    cdsRascunhoproduto: TStringField;
    cdsRascunhoqtde: TIntegerField;
    cdsRascunhovalorunit: TFloatField;
    cdsRascunhosubtotal: TFloatField;
    cdsRascunhototalConta: TFloatField;
    cdsRascunhoobs: TStringField;
    cdsRascunhomesa: TIntegerField;
    cdsRascunhocodigo: TIntegerField;
    procedure UnimFormCreate(Sender: TObject);
    procedure btnItemsClick(Sender: TObject);
    procedure dbgCardapioClick(Sender: TObject);
    procedure Header;
  private
    { Private declarations }
  public
    { Public declarations }

        mesa : Integer;
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uRascunho, uCardapioItems;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

{ TMainmForm }

procedure TMainmForm.btnItemsClick(Sender: TObject);
begin

    if cdsRascunho.IsEmpty then Exit;
    frmRascunho.ShowModal();

end;

procedure TMainmForm.dbgCardapioClick(Sender: TObject);
begin
    //frmCardapioItems.Caption := UniMainModule.qryCardapiopro_descricao.AsString;
    //frmCardapioItems.ShowModal();
end;

procedure TMainmForm.Header;
var
html: TStringList;

begin
    html := TStringList.Create;
    html.Add('<!DOCTYPE html><html><head><title>Grid Food Menu</title>');
     html.Add('<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">');
      html.Add('</head>');
       html.Add('<body>');
        html.Add('<div class="menu">');
          html.Add('<div class="heading">');
           html.Add('<h1>Igourmet</h1>');
           html.Add('<h3>&mdash; MENU &mdash; </h3>');
          html.Add('</div>');
         html.Add('</div>');
       html.Add('</body>');
      html.Add('</html>');

      UnimHTMLFrame1.HTML.Text := html.Text;
      html.Free;
end;




procedure TMainmForm.UnimFormCreate(Sender: TObject);
begin


  Header;
  UniMainModule.qryCardapio.Close;
  UniMainModule.qryCardapio.Open;

  //mesa    := UniApplication.Parameters.Values['mesa'];
  //UniMainModule.UsuarioQuarto := mesa;
  //Abertura da tabela

end;



initialization
  RegisterAppFormClass(TMainmForm);

end.
