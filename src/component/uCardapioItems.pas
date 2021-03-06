unit uCardapioItems;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  unimEdit, unimPanel, uniLabel, unimLabel, uniEdit, uniPanel, uniHTMLFrame,
  unimHTMLFrame, uniButton, unimButton, uniGUIBaseClasses, UniFSToast;

type
  TfrmCardapioItems = class(TUnimForm)
    contPnl: TUnimContainerPanel;
    btnConfirmar: TUnimButton;
    htmlItems: TUnimHTMLFrame;
    UnimPanel1: TUnimPanel;
    btnMais: TUnimButton;
    btnMenos: TUnimButton;
    edtQtde: TUnimNumberEdit;
    toastItems: TUniFSToast;
    procedure UnimFormCreate(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnMenosClick(Sender: TObject);
    procedure btnMaisClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure headerCardapioItems;
  end;

function frmCardapioItems: TfrmCardapioItems;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Mainm;

function frmCardapioItems: TfrmCardapioItems;
begin
  Result := TfrmCardapioItems(UniMainModule.GetFormInstance(TfrmCardapioItems));
end;

{ TfrmCardapioItems }

procedure TfrmCardapioItems.btnConfirmarClick(Sender: TObject);

var  totalConta: Real;

begin

     if(edtQtde.Value = 0) then
     begin
       frmCardapioItems.Close;
     end;


     MainmForm.cdsRascunho.Append;

     //MainmForm.cdsRascunho.FieldByName('mesa').AsInteger   := MainmForm.mesa;

     MainmForm.cdsRascunho.FieldByName('produto').AsString   := UniMainModule.qryCardapiopro_descricao.AsString;
     MainmForm.cdsRascunho.FieldByName('valorunit').AsFloat  := UniMainModule.qryCardapiopro_valor.AsFloat;
     MainmForm.cdsRascunho.FieldByName('subtotal').AsFloat   := edtQtde.value * UniMainModule.qryCardapiopro_valor.AsFloat;
     MainmForm.cdsRascunho.FieldByName('qtde').AsFloat       := edtQtde.Value;

     totalConta := edtQtde.Value *  UniMainModule.qryCardapiopro_valor.AsFloat;
     MainmForm.cdsRascunho.FieldByName('totalConta').AsFloat := totalConta;

     MainmForm.cdsRascunho.Post;
     MainmForm.btnItems.BadgeText := IntToStr(MainmForm.cdsRascunho.RecordCount);
     self.Close;

    toastItems.Clear;
    toastItems.Title := 'Pedido adicionado ao carrinho';
    toastItems.Icon := 'fas fa-cart-arrow-down'; //https://fontawesome.com/icons?d=gallery
    toastItems.Theme := TToastTheme.Light;
    toastItems.Balloon := False;
    toastItems.Position := TToastPosition.bottomRight;
    toastItems.ProgressBarColor := 'RGB(80,139,255)';
    toastItems.Layout := TToastLayout.SmallInt;
    toastItems.TimeOut := 01800;
    toastItems.Overlay := True;
    toastItems.Show;
end;

procedure TfrmCardapioItems.btnMaisClick(Sender: TObject);

begin
   edtQtde.Value := edtQtde.Value+1;
end;

procedure TfrmCardapioItems.btnMenosClick(Sender: TObject);
begin

 if (edtQtde.Value > 0) then
  begin
   edtQtde.Value := edtQtde.Value-1;
  end
  else
  begin
    edtQtde.Value := 0;
  end;


end;

procedure TfrmCardapioItems.headerCardapioItems;

var
html: TStringList;
begin
  html := TStringList.Create;
    //html
         html.Add('<div class="menu">');

          html.Add('<div class="heading">');
           html.Add('<h1>Quantidade</h1>');
          html.Add('</div>');
         html.Add('</div>');

      htmlItems.HTML.Text := html.Text;
      html.Free;
end;

procedure TfrmCardapioItems.UnimFormCreate(Sender: TObject);
begin
      headerCardapioItems;
end;

end.
