object UniMainModule: TUniMainModule
  OldCreateOrder = False
  OnCreate = UniGUIMainModuleCreate
  Theme = 'triton'
  TouchTheme = 'ios'
  MonitoredKeys.Keys = <>
  EnableSynchronousOperations = True
  Height = 239
  Width = 267
  object con1: TFDConnection
    Params.Strings = (
      'Database=zltecnologia'
      'User_Name=root'
      'Password=root'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    UpdateOptions.AssignedValues = [uvLockWait]
    BeforeConnect = con1BeforeConnect
    Left = 24
    Top = 16
  end
  object qryCardapio: TFDQuery
    Connection = con1
    SQL.Strings = (
      
        'SELECT SUBSTRING(pro_descricao,1, 20) AS  pro_descricao, pro_id,' +
        ' pro_valor,pro_observacao FROM cad_produto LIMIT 10  ')
    Left = 24
    Top = 64
    object qryCardapiopro_descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_descricao'
      Origin = 'pro_descricao'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryCardapiopro_id: TFDAutoIncField
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryCardapiopro_valor: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'pro_valor'
      Origin = 'pro_valor'
      Precision = 10
      Size = 2
    end
    object qryCardapiopro_observacao: TStringField
      FieldName = 'pro_observacao'
      Origin = 'pro_observacao'
      Required = True
      Size = 500
    end
  end
  object dsCardapio: TDataSource
    DataSet = qryCardapio
    Left = 24
    Top = 120
  end
  object qryAuxiliar: TFDQuery
    Connection = con1
    Left = 24
    Top = 176
    object FDAutoIncField1: TFDAutoIncField
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object StringField1: TStringField
      FieldName = 'pro_descricao'
      Origin = 'pro_descricao'
      Required = True
      Size = 90
    end
    object BCDField1: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'pro_valor'
      Origin = 'pro_valor'
      Precision = 10
      Size = 2
    end
    object BCDField2: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'pro_valorcusto'
      Origin = 'pro_valorcusto'
      Precision = 10
      Size = 2
    end
    object BCDField3: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'pro_estoqueminimo'
      Origin = 'pro_estoqueminimo'
      Precision = 10
      Size = 2
    end
    object IntegerField1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_ncm'
      Origin = 'pro_ncm'
    end
    object IntegerField2: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_cest'
      Origin = 'pro_cest'
    end
    object StringField2: TStringField
      FieldName = 'pro_tributacao'
      Origin = 'pro_tributacao'
      Required = True
      Size = 45
    end
    object IntegerField3: TIntegerField
      FieldName = 'grp_id'
      Origin = 'grp_id'
      Required = True
    end
    object IntegerField4: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'grs_id'
      Origin = 'grs_id'
    end
    object IntegerField5: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_referencia'
      Origin = 'pro_referencia'
    end
  end
  object FSTheme: TUniFSTheme
    Style = Crystal
    Enabled = True
    Left = 192
    Top = 80
  end
  object Mensagem: TUniFSConfirm
    Theme = modern
    TypeColor = blue
    TypeAnimated = False
    Draggable = False
    EscapeKey = False
    CloseIcon = False
    Icon = 'far fa-smile-wink'
    RTL = False
    boxWidth = '420px'
    BackgroundDismiss = False
    ButtonTextConfirm = 'Confirma'
    ButtonTextCancel = 'Cancela'
    ButtonTextOther = 'Outro'
    ButtonTextOK = 'Ok'
    ButtonEnterConfirm = True
    ScreenMask.Enabled = False
    ScreenMask.Text = 'Processing'
    PromptType.TypePrompt = text
    PromptType.RequiredField = False
    PromptType.TextRequiredField = 'Field riquired'
    PromptType.CharCase = Normal_
    Left = 192
    Top = 128
  end
end
