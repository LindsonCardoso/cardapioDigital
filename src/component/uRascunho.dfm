object frmRascunho: TfrmRascunho
  Left = 0
  Top = 0
  ClientHeight = 539
  ClientWidth = 319
  Caption = 'frmRascunho'
  AutoHeight = False
  ShowTitle = False
  FullScreen = False
  CloseButton.Visible = False
  TitleButtons = <>
  OnCreate = UnimFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 0
  PlatformData = {}
  object html2: TUnimHTMLFrame
    Left = 0
    Top = 0
    Width = 319
    Height = 89
    Hint = ''
    Align = alTop
  end
  object dbgRascunho: TUnimDBListGrid
    Left = 0
    Top = 89
    Width = 319
    Height = 320
    Hint = ''
    Align = alTop
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.lo' +
        'adingText='#39'Buscando...'#39';'#13#10'    config.grouped=true;'#13#10'    config.s' +
        'electedCls='#39#39';'#13#10'    config.itemTpl='#39'<table style="width:100%;whi' +
        'te-space: nowrap; vertical-align: middle;">'#39'+            '#13#10'     ' +
        '              '#39'<tr>'#39'+'#13#10'                   '#39'<td style="color: #00' +
        '0;font-weight: 500;font-size: 1rem;" colspan="2">{0}</td>'#39'+'#13#10'   ' +
        '                '#39'</tr>'#39'+'#13#10'                '#13#10'                   '#39 +
        '<tr>'#39'+  '#13#10'                   '#39'<td style="color: #6f6f6f;font-wei' +
        'ght: 500;font-size: 1rem;line-height: 28px;" colspan="2">Qtd: {1' +
        '}</td>'#39'+'#13#10'                   '#39'</tr>'#39'+'#13#10'                   '#13#10'    ' +
        '               '#39'<tr>'#39'+  '#13#10'                   '#39'<td style="color: ' +
        '#6f6f6f;font-weight: 500;font-size: 1rem;line-height: 28px;" col' +
        'span="2">Valor unitario: R$ {2}</td>'#39'+'#13#10'                   '#39'</tr' +
        '>'#39'+'#13#10'                   '#13#10'                   '#39'<tr>'#39'+  '#13#10'        ' +
        '           '#39'<td style="color: #6f6f6f;font-weight: 500;font-size' +
        ': 1rem;line-height: 28px;" colspan="2">Total: R$ {4}</td>'#39'+'#13#10'   ' +
        '                '#39'</tr>'#39'+'#13#10'                   '#39'</table>'#39';'#13#10'      ' +
        '             '#13#10'}'#13#10)
    Options = [dgColLines, dgRowLines, dgConfirmDelete]
    WebOptions.Paged = False
    WebOptions.FetchAll = True
    OnClick = dbgRascunhoClick
    Columns = <
      item
        Title.Caption = 'produto'
        FieldName = 'produto'
        Visible = False
        Width = 356
      end
      item
        Title.Caption = 'qtde'
        FieldName = 'qtde'
        Visible = False
        Width = 114
      end
      item
        Title.Caption = 'valorunit'
        FieldName = 'valorunit'
        Visible = False
        Width = 114
      end
      item
        Title.Caption = 'subtotal'
        FieldName = 'subtotal'
        Visible = False
        Width = 114
      end
      item
        Title.Caption = 'totalConta'
        FieldName = 'totalConta'
        Width = 114
      end>
  end
  object framehtmlTotal: TUnimHTMLFrame
    AlignWithMargins = True
    Left = 3
    Top = 412
    Width = 313
    Height = 40
    Hint = ''
    Align = alClient
  end
  object btnVoltar: TUnimButton
    AlignWithMargins = True
    Left = 3
    Top = 458
    Width = 313
    Height = 36
    Hint = ''
    Align = alBottom
    Caption = 'Adicionar mais itens'
    IconCls = 'fas fa-cart-plus'
    UI = 'confirm'
    Font.Height = -13
    OnClick = btnVoltarClick
  end
  object btnFinalizar: TUnimButton
    AlignWithMargins = True
    Left = 3
    Top = 500
    Width = 313
    Height = 36
    Hint = ''
    Align = alBottom
    Caption = 'FINALIZAR'
    IconCls = 'far fa-share-square'
    UI = 'plain'
    Font.Height = -17
    Font.Style = [fsBold]
    OnClick = btnFinalizarClick
  end
  object unmnExcluir: TUnimMenu
    Items = <
      item
        Caption = 'EXCLUIR'
        MenuId = 0
        IconCls = 'delete'
      end>
    Side = msBottom
    Visible = False
    OnClick = unmnExcluirClick
    Left = 224
    Top = 133
  end
  object toast: TUniFSToast
    TitleSize = 22
    TitleLineHeight = 0
    MsgSize = 16
    MsgLineHeight = 0
    Theme = Dark
    ImageWidth = 0
    MaxWidth = 0
    zIndex = 99999
    Layout = SmallInt
    Balloon = False
    Close = True
    CloseOnEscape = False
    CloseOnClick = False
    RTL = False
    Position = bottomRight
    TimeOut = 5000
    Drag = True
    Overlay = False
    ToastOnce = False
    PauseOnHover = True
    ResetOnHover = False
    ProgressBar = True
    ProgressBarColor = 'rgb(0, 255, 184)'
    ScreenMask.Enabled = False
    Animateinside = True
    TransitionIn = fadeInRight
    TransitionOut = fadeOutRight
    TransitionInMobile = fadeInRight
    TransitionOutMobile = fadeOutRight
    ButtonTextYes = 'Confirma'
    ButtonTextNo = 'Cancela'
    Left = 152
    Top = 304
  end
end
