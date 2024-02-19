object dm: Tdm
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object fdConnection: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Database=D:\Base_Teste\SISTEMA_SISPLAN.FDB'
      'DriverID=FB')
    Connected = True
    Left = 16
    Top = 16
  end
  object fdProduto: TFDTable
    Active = True
    Connection = fdConnection
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'PRODUTO'
    Left = 224
    Top = 424
    object fdProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object fdProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 55
    end
    object fdProdutoCODIGO2: TStringField
      FieldName = 'CODIGO2'
      Origin = 'CODIGO2'
      Size = 25
    end
    object fdTableProduto: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 5
    end
  end
  object dsProduto: TDataSource
    DataSet = fdProduto
    Left = 288
    Top = 424
  end
  object fdImposto: TFDTable
    Active = True
    Connection = fdConnection
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'HISTORICO_IMPOSTO'
    Left = 24
    Top = 424
    object fdImpostoVALOR_OPERACAO: TFMTBCDField
      FieldName = 'VALOR_OPERACAO'
      Origin = 'VALOR_OPERACAO'
      Precision = 18
      Size = 2
    end
    object fdImpostoFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Precision = 18
      Size = 2
    end
    object fdImpostoDESPESAS: TFMTBCDField
      FieldName = 'DESPESAS'
      Origin = 'DESPESAS'
      Precision = 18
      Size = 2
    end
    object fdImpostoALIQUOTA_INTERNA: TFMTBCDField
      FieldName = 'ALIQUOTA_INTERNA'
      Origin = 'ALIQUOTA_INTERNA'
      Precision = 18
      Size = 2
    end
    object fdImpostoALIQUOTA_EXTERNA: TFMTBCDField
      FieldName = 'ALIQUOTA_EXTERNA'
      Origin = 'ALIQUOTA_EXTERNA'
      Precision = 18
      Size = 2
    end
    object fdImpostoPERCENTUAL_DESCONTO: TFMTBCDField
      FieldName = 'PERCENTUAL_DESCONTO'
      Origin = 'PERCENTUAL_DESCONTO'
      Precision = 18
      Size = 2
    end
    object fdImpostoDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object fdImpostoPIS: TFMTBCDField
      FieldName = 'PIS'
      Origin = 'PIS'
      Precision = 18
      Size = 2
    end
    object fdImpostoCOFINS: TFMTBCDField
      FieldName = 'COFINS'
      Origin = 'COFINS'
      Precision = 18
      Size = 2
    end
    object fdImpostoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object fdImpostoHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object fdImpostoICMS_TOTAL: TFMTBCDField
      FieldName = 'ICMS_TOTAL'
      Origin = 'ICMS_TOTAL'
      Precision = 18
      Size = 2
    end
    object fdImpostoBASE_CAL: TFMTBCDField
      FieldName = 'BASE_CAL'
      Origin = 'BASE_CAL'
      Precision = 18
      Size = 2
    end
  end
  object dsImposto: TDataSource
    DataSet = fdImposto
    Left = 88
    Top = 424
  end
end
