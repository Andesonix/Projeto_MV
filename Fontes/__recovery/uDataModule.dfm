object DM_Cadastro: TDM_Cadastro
  OldCreateOrder = False
  Height = 150
  Width = 215
  object ConexaoBanco: TFDConnection
    Params.Strings = (
      'Database=db_mv'
      'User_Name=postgres'
      'Password=251800'
      'Server=localhost'
      'DriverID=PG')
    LoginPrompt = False
    Left = 32
    Top = 8
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    Left = 48
    Top = 64
  end
end
