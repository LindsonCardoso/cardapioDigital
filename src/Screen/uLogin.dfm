object UnimLoginForm1: TUnimLoginForm1
  Left = 0
  Top = 0
  ClientHeight = 423
  ClientWidth = 287
  Caption = 'START FOOD'
  Color = clWhite
  AutoHeight = False
  TitleColor = clBlack
  CloseButton.Visible = False
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object pnl1: TUnimPanel
    Left = 0
    Top = 0
    Width = 287
    Height = 423
    Hint = ''
    Align = alClient
    Color = clWhite
    BorderStyle = ubsNone
    object img1: TUnimImage
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 281
      Height = 206
      Hint = ''
      ParentShowHint = False
      Align = alTop
      Center = True
      Stretch = True
    end
    object btnEntrar: TUnimButton
      AlignWithMargins = True
      Left = 3
      Top = 371
      Width = 281
      Height = 42
      Hint = ''
      Align = alBottom
      Caption = 'ENTRAR'
      UI = 'action'
      ExplicitTop = 352
    end
    object UnimPanel1: TUnimPanel
      Left = 0
      Top = 416
      Width = 287
      Height = 7
      Hint = ''
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clWhite
      BorderStyle = ubsNone
    end
    object UnimPanel2: TUnimPanel
      Left = 0
      Top = 212
      Width = 287
      Height = 50
      Hint = ''
      Align = alClient
      Color = clWhite
      BorderStyle = ubsNone
      ExplicitHeight = 31
    end
    object edtCodigo: TUnimEdit
      AlignWithMargins = True
      Left = 3
      Top = 265
      Width = 281
      Height = 47
      Hint = ''
      Align = alBottom
      Text = ''
      FieldLabel = 'C'#211'DIGO:'
      FieldLabelWidth = 25
      ParentFont = False
      TabOrder = 5
      ExplicitLeft = 40
      ExplicitTop = 288
      ExplicitWidth = 225
    end
    object edtSenha: TUnimEdit
      AlignWithMargins = True
      Left = 3
      Top = 318
      Width = 281
      Height = 47
      Hint = ''
      Align = alBottom
      Text = ''
      FieldLabel = 'SENHA:'
      FieldLabelWidth = 25
      ParentFont = False
      TabOrder = 6
      ExplicitTop = 337
    end
  end
end
