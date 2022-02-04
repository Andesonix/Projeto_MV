object frmCadEmpregados: TfrmCadEmpregados
  Left = 0
  Top = 0
  Caption = 'Cadastro Empregados'
  ClientHeight = 538
  ClientWidth = 870
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 2
    Top = 8
    Width = 831
    Height = 105
    TabOrder = 2
    object gpbCod: TGroupBox
      Left = 7
      Top = 0
      Width = 74
      Height = 41
      Caption = 'Cod.DPTO'
      TabOrder = 7
    end
    object edtCodDepartamento: TEdit
      Left = 18
      Top = 15
      Width = 55
      Height = 21
      TabOrder = 0
    end
    object gpbDepartamento: TGroupBox
      Left = 164
      Top = 0
      Width = 275
      Height = 41
      Caption = 'FUNCION'#193'RIO'
      TabOrder = 8
    end
    object edtFuncionario: TEdit
      Left = 175
      Top = 15
      Width = 258
      Height = 21
      TabOrder = 2
    end
    object gpbLocal: TGroupBox
      Left = 682
      Top = 0
      Width = 139
      Height = 41
      Caption = 'Comiss'#227'o'
      TabOrder = 9
    end
    object GroupBox1: TGroupBox
      Left = 84
      Top = 0
      Width = 74
      Height = 41
      Caption = 'Cod.FUNC'
      TabOrder = 10
    end
    object edtCodFuncao: TEdit
      Left = 95
      Top = 15
      Width = 55
      Height = 21
      TabOrder = 1
    end
    object GroupBox3: TGroupBox
      Left = 7
      Top = 56
      Width = 139
      Height = 41
      Caption = 'Sal'#225'rio'
      TabOrder = 11
    end
    object edtComissao: TEdit
      Left = 690
      Top = 15
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object GroupBox4: TGroupBox
      Left = 164
      Top = 56
      Width = 85
      Height = 41
      Caption = 'Admiss'#227'o'
      TabOrder = 12
    end
    object meditAdmissao: TMaskEdit
      Left = 175
      Top = 70
      Width = 74
      Height = 24
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 6
      Text = '  /  /    '
    end
    object GroupBox2: TGroupBox
      Left = 455
      Top = 1
      Width = 223
      Height = 41
      Caption = 'FUN'#199#195'O'
      TabOrder = 13
    end
    object edtFuncao: TEdit
      Left = 481
      Top = 15
      Width = 152
      Height = 21
      TabOrder = 3
    end
    object edtSalario: TEdit
      Left = 19
      Top = 73
      Width = 121
      Height = 21
      TabOrder = 5
    end
  end
  object Panel1: TPanel
    Left = 2
    Top = 119
    Width = 831
    Height = 42
    TabOrder = 0
    object btnIncluir: TSpeedButton
      Left = 8
      Top = 2
      Width = 185
      Height = 33
      Caption = 'Incluir'
      OnClick = btnIncluirClick
    end
    object SpeedButton1: TSpeedButton
      Left = 639
      Top = 2
      Width = 185
      Height = 33
      Caption = 'Excluir'
      OnClick = SpeedButton1Click
    end
  end
  object dbgDepartamentos: TDBGrid
    Left = 2
    Top = 167
    Width = 831
    Height = 369
    DataSource = dsEmpregados
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_empregado'
        Title.Caption = 'ID.FUNC'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cod_departamento'
        Title.Alignment = taCenter
        Title.Caption = 'COD. DPTO'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cod_emp_funcao'
        Title.Caption = 'COD.FUNC.EMP'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nm_empregado'
        Title.Caption = 'FUNCION'#193'RIO'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nm_funcao'
        Title.Caption = 'FUN'#199#195'O'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'comissao'
        Title.Caption = 'COMISS'#195'O'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'salario'
        Title.Caption = 'SAL'#193'RIO'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_admissao'
        Title.Caption = 'ADMISS'#195'O'
        Visible = True
      end>
  end
  object qryConsulta: TFDQuery
    Active = True
    Connection = DM_Cadastro.ConexaoBanco
    SQL.Strings = (
      'select * FROM EMPREGADOS'
      'ORDER BY 1')
    Left = 56
    Top = 368
  end
  object dsEmpregados: TDataSource
    DataSet = qryConsulta
    Left = 328
    Top = 376
  end
  object qryEmpregados: TFDQuery
    Connection = DM_Cadastro.ConexaoBanco
    Left = 160
    Top = 400
  end
end
