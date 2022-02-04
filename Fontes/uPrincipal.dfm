object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Cadastro Empregados / Departamentos'
  ClientHeight = 298
  ClientWidth = 594
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 32
    Top = 8
    object C1: TMenuItem
      Caption = 'Cadastro'
      object D1: TMenuItem
        Caption = 'Departamentos'
        OnClick = D1Click
      end
      object E1: TMenuItem
        Caption = 'Empregados'
        OnClick = E1Click
      end
    end
    object R1: TMenuItem
      Caption = 'Relat'#243'rios'
      object l1: TMenuItem
        Caption = 'Listagem Empregados'
        OnClick = l1Click
      end
    end
    object N11: TMenuItem
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = qryRelatorio
    BCDToCurrency = False
    Left = 152
    Top = 8
  end
  object qryRelatorio: TFDQuery
    Connection = DM_Cadastro.ConexaoBanco
    Left = 88
    Top = 8
  end
  object frxReport1: TfrxReport
    Version = '6.7.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44596.514009294000000000
    ReportOptions.LastChange = 44596.514009294000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 232
    Top = 8
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 94.811070000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 210.771800000000000000
          Top = 6.000000000000000000
          Width = 296.929500000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CADASTRO FUNCION'#193'RIOS')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 18.000000000000000000
          Top = 61.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA:')
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 61.000000000000000000
          Top = 63.102350000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
        end
        object Time: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 146.000000000000000000
          Top = 63.102350000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 85.602350000000000000
          Width = 741.000000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 219.212740000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset2DTENTR: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 27.000000000000000000
          Top = 2.177180000000000000
          Width = 291.870130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."NM_EMPREGADO"]')
          ParentFont = False
        end
        object frxDBDataset2NRNOTIF: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 337.035870000000000000
          Top = 2.177180000000000000
          Width = 141.326840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."NM_FUNCAO"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 497.500000000000000000
          Top = 0.787260000000000000
          Width = 190.326840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."NM_DEPARTAMENTO"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 173.858380000000000000
        Width = 740.409927000000000000
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 25.000000000000000000
          Top = 0.177180000000000000
          Width = 297.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FUNCION'#193'RIO')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 343.256340000000000000
          Top = 0.677180000000000000
          Width = 136.106370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FUN'#199#195'O')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 500.720470000000000000
          Top = 0.141620000000000000
          Width = 205.106370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DEPARTAMENTO')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 22.641620000000000000
          Width = 741.000000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Line1: TfrxLineView
        AllowVectorExport = True
        Left = 51.000000000000000000
        Top = 344.000000000000000000
        Height = 1.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
    end
  end
end
