object UniMainModule: TUniMainModule
  OldCreateOrder = False
  TouchTheme = 'ios'
  MonitoredKeys.Keys = <>
  Height = 258
  Width = 725
  object con1: TFDConnection
    Params.Strings = (
      'Database=zltecnologia'
      'User_Name=root'
      'Server=127.0.0.1'
      'Password=root'
      'DriverID=MySQL')
    UpdateOptions.AssignedValues = [uvLockWait]
    Connected = True
    Left = 104
    Top = 16
  end
  object qryCardapio: TFDQuery
    Connection = con1
    SQL.Strings = (
      'select * From cad_produto LIMIT 50;')
    Left = 48
    Top = 80
    object qryCardapiopro_id: TFDAutoIncField
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryCardapiopro_descricao: TStringField
      FieldName = 'pro_descricao'
      Origin = 'pro_descricao'
      Required = True
      Size = 90
    end
    object qryCardapiopro_valor: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'pro_valor'
      Origin = 'pro_valor'
      Precision = 10
      Size = 2
    end
    object qryCardapiopro_valorcusto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'pro_valorcusto'
      Origin = 'pro_valorcusto'
      Precision = 10
      Size = 2
    end
    object qryCardapiopro_estoqueminimo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'pro_estoqueminimo'
      Origin = 'pro_estoqueminimo'
      Precision = 10
      Size = 2
    end
    object qryCardapiopro_ncm: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_ncm'
      Origin = 'pro_ncm'
    end
    object qryCardapiopro_cest: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_cest'
      Origin = 'pro_cest'
    end
    object qryCardapiopro_tributacao: TStringField
      FieldName = 'pro_tributacao'
      Origin = 'pro_tributacao'
      Required = True
      Size = 45
    end
    object qryCardapiogrp_id: TIntegerField
      FieldName = 'grp_id'
      Origin = 'grp_id'
      Required = True
    end
    object qryCardapiogrs_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'grs_id'
      Origin = 'grs_id'
    end
    object qryCardapiopro_referencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_referencia'
      Origin = 'pro_referencia'
    end
  end
  object dsCardapio: TDataSource
    DataSet = qryCardapio
    Left = 48
    Top = 128
  end
  object qryAuxiliar: TFDQuery
    Connection = con1
    Left = 144
    Top = 80
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
end
