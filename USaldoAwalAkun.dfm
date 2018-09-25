object Frm_SaldoAwalAkun: TFrm_SaldoAwalAkun
  Left = 305
  Top = 176
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Saldo Awal'
  ClientHeight = 509
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 15
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 25
    Align = alTop
    Alignment = taLeftJustify
    BorderOuter = fsNone
    Caption = 'Saldo Awal Akun'
    Color = 16744448
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    GradientColorStyle = gcsMSOffice
    ParentFont = False
    TabOrder = 0
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 472
    Width = 912
    Height = 37
    Align = alBottom
    BorderOuter = fsFlatRounded
    TabOrder = 1
    TabStop = True
    DesignSize = (
      912
      37)
    object BtSave: TRzBitBtn
      Left = 829
      Top = 7
      Anchors = [akTop, akRight]
      Caption = 'Simpan'
      Color = 12615680
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtSaveClick
    end
    object RzNumericEdit1: TRzNumericEdit
      Left = 16
      Top = 8
      Width = 129
      Height = 23
      FrameHotTrack = True
      FrameVisible = True
      TabOrder = 1
      Visible = False
      IntegersOnly = False
      DisplayFormat = ',0;(,0)'
    end
  end
  object dbgakun: TNextGrid
    Left = 0
    Top = 25
    Width = 912
    Height = 447
    Align = alClient
    GridLinesColor = clSilver
    GridLinesStyle = lsActiveHorzOnly
    HeaderSize = 25
    HeaderStyle = hsOutlook
    InputSize = 25
    RowSize = 26
    TabOrder = 2
    TabStop = True
    object NxTextColumn1: TNxTextColumn
      Color = clYellow
      DefaultWidth = 150
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Header.Color = clSkyBlue
      Header.Caption = 'Kode'
      ParentFont = False
      Position = 0
      SortType = stAlphabetic
      Width = 150
    end
    object NxTextColumn2: TNxTextColumn
      Color = clYellow
      DefaultWidth = 460
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Header.Color = clSkyBlue
      Header.Caption = 'Nama Akun'
      Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      ParentFont = False
      Position = 1
      SortType = stAlphabetic
      Width = 460
    end
    object NxNumberColumn1: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 150
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Header.Color = clSkyBlue
      Header.Caption = 'Debit'
      Header.Alignment = taRightJustify
      Options = [coCanClick, coCanInput, coCanSort, coEditing, coEditorAutoSelect, coPublicUsing]
      ParentFont = False
      Position = 2
      SortType = stNumeric
      Width = 150
      FormatMask = '#,#0.##'
      Increment = 1.000000000000000000
      Precision = 0
      SpinButtons = False
    end
    object NxNumberColumn2: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 150
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Header.Color = clSkyBlue
      Header.Caption = 'Kredit'
      Header.Alignment = taRightJustify
      Options = [coCanClick, coCanInput, coCanSort, coEditing, coEditorAutoSelect, coPublicUsing]
      ParentFont = False
      Position = 3
      SortType = stNumeric
      Width = 150
      FormatMask = '#,#0.##'
      Increment = 1.000000000000000000
      Precision = 0
      SpinButtons = False
    end
    object NxNumberColumn3: TNxNumberColumn
      Alignment = taCenter
      Color = clYellow
      DefaultValue = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      Position = 4
      SortType = stNumeric
      Visible = False
      Increment = 1.000000000000000000
      Precision = 0
    end
  end
  object QAkun: TZQuery
    Connection = DM.con
    SQL.Strings = (
      
        'SELECT a.*,IFNULL(b.debit,0)AS debit,IFNULL(b.kredit,0)AS kredit' +
        ' FROM'
      
        '                    (SELECT noakun,kodeakun,namaakun FROM tbl_ak' +
        'un WHERE aktif=1 AND noklasifikasi<=3)AS a'
      
        '                    LEFT JOIN tbl_saldoawalperiodeakun AS b ON b' +
        '.noakun=a.noakun AND b.noperiode=:np ORDER BY a.kodeakun')
    Params = <
      item
        DataType = ftUnknown
        Name = 'np'
        ParamType = ptUnknown
      end>
    Left = 848
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'np'
        ParamType = ptUnknown
      end>
  end
end
