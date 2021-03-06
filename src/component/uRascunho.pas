unit uRascunho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniButton, uniBitBtn, UniFSButton, uniGUIBaseClasses, uniPanel, uniHTMLFrame,
  unimHTMLFrame, unimMenu, uniMultiItem, unimList, unimDBList, UniFSConfirm,
  unimButton, uniBasicGrid, uniDBGrid, unimDBListGrid, UniFSiGrowl, uniLabel,
  unimLabel, uniEdit, unimEdit, Vcl.ExtCtrls, unimPanel, UniFSToast;

type
  TfrmRascunho = class(TUnimForm)
    html2: TUnimHTMLFrame;
    unmnExcluir: TUnimMenu;
    btnVoltar: TUnimButton;
    dbgRascunho: TUnimDBListGrid;
    btnFinalizar: TUnimButton;
    framehtmlTotal: TUnimHTMLFrame;
    toast: TUniFSToast;
    procedure unmnExcluirClick(Sender: TUnimMenuItem);
    procedure dbgRascunhoClick(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
    procedure UnimFormCreate(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
  private
    { Private declarations }
    { Public declarations }
  procedure ViewTotal;
  procedure headerPedidoItems;
  end;

function frmRascunho: TfrmRascunho;
function ValorTotal(Valor:Real) : Real;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Mainm;

function frmRascunho: TfrmRascunho;
begin
  Result := TfrmRascunho(UniMainModule.GetFormInstance(TfrmRascunho));
end;


function ValorTotal(Valor:Real) : Real;
Var
 sValor: Real;
begin
   Result    := 0;
   Result    := StrToFloat(FormatFloat('####0.00', Valor));
end;



procedure TfrmRascunho.headerPedidoItems;
 var html: TStringList;
begin
     html := TStringList.Create;
    //html
         html.Add('<div class="menu">');
          html.Add('<div class="heading">');
           html.Add('<h1>Seu Pedido</h1>');
              html.Add('<h2>&mdash; 🍛 &mdash; </h2>');
          html.Add('</div>');
         html.Add('</div>');
      html2.HTML.Text := html.Text;
end;



procedure TfrmRascunho.btnFinalizarClick(Sender: TObject);
begin

   MainmForm.cdsRascunho.EmptyDataSet;
   MainmForm.cdsRascunho.Close;
   MainmForm.cdsRascunho.Open;
   Self.Close;
    toast.Clear;
    toast.Title := '😋 Pedido enviado!!!';
    toast.Msg := '';
    toast.Icon := 'fas fa-check'; //https://fontawesome.com/icons?d=gallery
    toast.Theme := TToastTheme.Dark;
    toast.Balloon := False;
    toast.Position := TToastPosition.bottomRight;
    toast.ProgressBarColor := 'RGB(80,139,255)';
    toast.TimeOut := 01800;
    toast.Overlay := True;
    toast.Show;


end;

procedure TfrmRascunho.btnVoltarClick(Sender: TObject);
begin
      Self.Close;
end;

procedure TfrmRascunho.dbgRascunhoClick(Sender: TObject);
begin
    unmnExcluir.Visible := true;

end;

procedure TfrmRascunho.UnimFormCreate(Sender: TObject);
begin
        headerPedidoItems;
        ViewTotal;
        dbgRascunho.DataSource  :=  MainmForm.dsRascunho;

end;

procedure TfrmRascunho.unmnExcluirClick(Sender: TUnimMenuItem);
begin
     case Sender.ButtonId of
      0: MainmForm.cdsRascunho.Delete;
     end;
     unmnExcluir.Visible := false;
     if(MainmForm.cdsRascunho.IsEmpty)then Self.Close
     else
     begin
       ViewTotal;
     end;
end;

procedure TfrmRascunho.ViewTotal;
 var htmlTotal: TStringList;
     TotalValor: Real;
     valor: Real;
 begin
        MainmForm.cdsRascunho.First;
        while not MainmForm.cdsRascunho.Eof do
        begin
        TotalValor := (TotalValor + MainmForm.cdsRascunho.FieldByName('subtotal').AsFloat);
        MainmForm.cdsRascunho.Next;
        end;

       htmlTotal := TStringList.Create;
    //html
         htmlTotal.Add('<div class="details-total">');
           htmlTotal.Add('<h4>Total</h4>');
           htmlTotal.Add('<p>R$'+FloatToStr(ValorTotal(TotalValor))+'</p>');
         htmlTotal.Add('</div>');
      framehtmlTotal.HTML.Text := htmlTotal.Text;
end;

end.
