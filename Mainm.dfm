object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 527
  ClientWidth = 320
  Caption = 'MainmForm'
  ShowTitle = False
  CloseButton.Visible = False
  TitleButtons = <>
  OnCreate = UnimFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 0
  PlatformData = {}
  object UnimHTMLFrame1: TUnimHTMLFrame
    Left = 0
    Top = 0
    Width = 320
    Height = 97
    Hint = ''
    Align = alTop
  end
  object dbgCardapio: TUnimDBListGrid
    AlignWithMargins = True
    Left = 3
    Top = 100
    Width = 314
    Height = 374
    Hint = ''
    Align = alClient
    DataSource = UniMainModule.dsCardapio
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.lo' +
        'adingText='#39'Buscando...'#39';'#13#10'    config.grouped=true;'#13#10'    config.s' +
        'electedCls='#39#39';'#13#10'    config.itemTpl='#39'<div class="row">'#39'+'#13#10'       ' +
        '            '#13#10'                   '#39'<div class="column">'#39'+'#13#10'      ' +
        '              '#39'<div class="card">'#39'+'#13#10'                     '#39'<imag' +
        'e style="width: 100%; height:80%; text-align: center;border-radi' +
        'us: 1rem;" src="src/img/cardapio/burger.jpg"/>'#39'+'#13#10'              ' +
        '       '#39'<h3>{0}</h3>'#39'+'#13#10'                     '#39'<p>{2}</p>'#39'+'#13#10'    ' +
        '                 '#39'<h4>R$ {1}</h4>'#39'+'#13#10'                    '#39'</div>' +
        #39'+'#13#10'                   '#39'</div>'#39'+              '#13#10'                ' +
        '   '#39'</div>'#39';'#13#10'}'#13#10)
    Options = [dgColLines, dgRowLines, dgConfirmDelete]
    WebOptions.Paged = False
    WebOptions.FetchAll = True
    OnClick = dbgCardapioClick
    Columns = <
      item
        Title.Caption = ' '
        FieldName = 'pro_descricao'
        Visible = False
        Width = 994
      end
      item
        Title.Caption = ' '
        FieldName = 'pro_valor'
        Visible = False
        Width = 125
      end
      item
        Title.Caption = 'pro_observacao'
        FieldName = 'pro_observacao'
        Width = 5504
      end>
  end
  object btnItems: TUnimButton
    AlignWithMargins = True
    Left = 3
    Top = 480
    Width = 314
    Height = 44
    Hint = ''
    Visible = False
    Align = alBottom
    Caption = 'CARRINHO'
    IconCls = 'fas fa-shopping-cart'
    UI = 'confirm'
    OnClick = btnItemsClick
  end
  object dsRascunho: TDataSource
    DataSet = cdsRascunho
    Left = 200
    Top = 160
  end
  object cdsRascunho: TClientDataSet
    PersistDataPacket.Data = {
      AD0000009619E0BD010000001800000008000000000003000000AD000770726F
      6475746F01004900000001000557494454480200020020000471746465040001
      00000000000976616C6F72756E6974080004000000000008737562746F74616C
      08000400000000000A746F74616C436F6E74610800040000000000036F627301
      00490000000100055749445448020002003400046D6573610400010000000000
      06636F6469676F04000100000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 208
    Top = 224
    object cdsRascunhoproduto: TStringField
      FieldName = 'produto'
      Size = 32
    end
    object cdsRascunhoqtde: TIntegerField
      FieldName = 'qtde'
    end
    object cdsRascunhovalorunit: TFloatField
      FieldName = 'valorunit'
    end
    object cdsRascunhosubtotal: TFloatField
      FieldName = 'subtotal'
    end
    object cdsRascunhototalConta: TFloatField
      FieldName = 'totalConta'
    end
    object cdsRascunhoobs: TStringField
      FieldName = 'obs'
      Size = 52
    end
    object cdsRascunhomesa: TIntegerField
      FieldName = 'mesa'
    end
    object cdsRascunhocodigo: TIntegerField
      FieldName = 'codigo'
    end
  end
end
