object Frm_DataDO: TFrm_DataDO
  Left = 489
  Top = 89
  BorderStyle = bsSingle
  Caption = 'Data Pengiriman Barang'
  ClientHeight = 690
  ClientWidth = 541
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 15
  object RzPanel2: TRzPanel
    Left = 0
    Top = 0
    Width = 541
    Height = 25
    Align = alTop
    Alignment = taLeftJustify
    BorderOuter = fsNone
    Caption = 'Data Pengiriman Barang'
    Color = 16744448
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object RzPanel3: TRzPanel
    Left = 0
    Top = 649
    Width = 541
    Height = 41
    Align = alBottom
    BorderOuter = fsNone
    TabOrder = 1
    DesignSize = (
      541
      41)
    object BtnOk: TRzBitBtn
      Left = 461
      Top = 8
      Anchors = [akTop, akRight]
      Caption = 'Ok'
      Color = 12615680
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnOkClick
    end
    object BtnBatal: TRzBitBtn
      Left = 381
      Top = 8
      Anchors = [akTop, akRight]
      Caption = 'Batal'
      Color = 12615680
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BtnBatalClick
    end
  end
  object dbgdata: TcxGrid
    Left = 0
    Top = 25
    Width = 541
    Height = 624
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Blue'
    object dbgdataDBTableView1: TcxGridDBTableView
      OnDblClick = dbgdataDBTableView1DblClick
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DSData
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.Active = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLines = glHorizontal
      object dbgdataDBTableView1tgltransaksi: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tglpenjualankirim'
        Width = 118
      end
      object dbgdataDBTableView1kodepembelianorder: TcxGridDBColumn
        Caption = 'No. Surat Jalan'
        DataBinding.FieldName = 'kodepenjualankirim'
        Width = 134
      end
    end
    object dbgdataLevel1: TcxGridLevel
      GridView = dbgdataDBTableView1
    end
  end
  object QData: TZQuery
    Connection = DM.con
    SQL.Strings = (
      
        'SELECT * FROM tbl_penjualankirim WHERE nokontak=:nk and nopenjua' +
        'lankirim not in(select nopenjualankirim from tbl_penjualaninvoic' +
        'e) ORDER BY tglpenjualankirim')
    Params = <
      item
        DataType = ftUnknown
        Name = 'nk'
        ParamType = ptUnknown
      end>
    Left = 48
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nk'
        ParamType = ptUnknown
      end>
    object QDatanopenjualankirim: TLargeintField
      FieldName = 'nopenjualankirim'
      Required = True
    end
    object QDatakodepenjualankirim: TStringField
      FieldName = 'kodepenjualankirim'
      Size = 15
    end
    object QDatanopenjualanorder: TLargeintField
      FieldName = 'nopenjualanorder'
    end
    object QDatanokontak: TLargeintField
      FieldName = 'nokontak'
    end
    object QDatatglpenjualankirim: TDateField
      FieldName = 'tglpenjualankirim'
    end
    object QDatanogudang: TLargeintField
      FieldName = 'nogudang'
    end
    object QDatabiayalain: TFloatField
      FieldName = 'biayalain'
    end
    object QDatanoakunbiayalain: TLargeintField
      FieldName = 'noakunbiayalain'
    end
    object QDatanamauser: TStringField
      FieldName = 'namauser'
      Size = 50
    end
    object QDataapprove: TSmallintField
      FieldName = 'approve'
    end
    object QDatatglapprove: TDateTimeField
      FieldName = 'tglapprove'
    end
  end
  object DSData: TDataSource
    DataSet = QData
    Left = 48
    Top = 136
  end
end
