object frmDepartamentos: TfrmDepartamentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro Departamentos'
  ClientHeight = 476
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 1
    Top = 55
    Width = 448
    Height = 41
    TabOrder = 0
    object btnIncluir: TSpeedButton
      Left = 8
      Top = 0
      Width = 185
      Height = 33
      Caption = 'Incluir'
      OnClick = btnIncluirClick
    end
    object SpeedButton1: TSpeedButton
      Left = 257
      Top = 0
      Width = 185
      Height = 33
      Caption = 'Excluir'
      OnClick = SpeedButton1Click
    end
  end
  object dbgDepartamentos: TDBGrid
    Left = 1
    Top = 102
    Width = 448
    Height = 369
    DataSource = dsDepartamentos
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_departamento'
        Title.Caption = 'COD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nm_departamento'
        Title.Caption = 'DEPARTAMENTO'
        Width = 220
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'local'
        Title.Caption = 'LOCAL'
        Width = 150
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 2
    Top = 8
    Width = 447
    Height = 41
    TabOrder = 2
    object gpbCod: TGroupBox
      Left = 7
      Top = 0
      Width = 74
      Height = 41
      Caption = 'Cod'
      TabOrder = 1
    end
    object edtCodDepartamento: TEdit
      Left = 18
      Top = 15
      Width = 55
      Height = 21
      TabOrder = 0
    end
    object gpbDepartamento: TGroupBox
      Left = 85
      Top = 0
      Width = 223
      Height = 41
      Caption = 'Departamento'
      TabOrder = 2
    end
    object edtDepartamento: TEdit
      Left = 95
      Top = 15
      Width = 202
      Height = 21
      TabOrder = 3
    end
    object gpbLocal: TGroupBox
      Left = 314
      Top = 0
      Width = 127
      Height = 41
      Caption = 'Local'
      TabOrder = 4
    end
  end
  object edtLocal: TEdit
    Left = 316
    Top = 23
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object qryConsulta: TFDQuery
    Connection = DM_Cadastro.ConexaoBanco
    SQL.Strings = (
      'select * FROM DEPARTAMENTOS'
      'ORDER BY 1')
    Left = 40
    Top = 328
  end
  object dsDepartamentos: TDataSource
    DataSet = qryConsulta
    Left = 208
    Top = 232
  end
  object qryDepartamento: TFDQuery
    Connection = DM_Cadastro.ConexaoBanco
    Left = 152
    Top = 336
  end
end
