object Frm_SalesOrder: TFrm_SalesOrder
  Left = 66
  Top = 17
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Order Penjualan'
  ClientHeight = 636
  ClientWidth = 1289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 15
  object RzGroupBox1: TRzGroupBox
    Left = 0
    Top = 0
    Width = 1289
    Height = 636
    Align = alClient
    Caption = 'Order Penjualan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    VisualStyle = vsGradient
    object RzPanel1: TRzPanel
      Left = 1
      Top = 24
      Width = 1287
      Height = 97
      Align = alTop
      BorderOuter = fsNone
      TabOrder = 0
      DesignSize = (
        1287
        97)
      object RzLabel2: TRzLabel
        Left = 17
        Top = 5
        Width = 42
        Height = 15
        Caption = 'No. SO :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object RzLabel4: TRzLabel
        Left = 225
        Top = 5
        Width = 58
        Height = 15
        Caption = 'Customer :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object LID: TRzLabel
        Left = 76
        Top = 3
        Width = 17
        Height = 15
        Alignment = taRightJustify
        Caption = 'LID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object RzLabel10: TRzLabel
        Left = 434
        Top = 5
        Width = 42
        Height = 15
        Caption = 'Tgl. SO :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object LCustomer: TRzLabel
        Left = 292
        Top = 3
        Width = 57
        Height = 15
        Alignment = taRightJustify
        Caption = 'LCustomer'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object RzLabel18: TRzLabel
        Left = 913
        Top = 53
        Width = 89
        Height = 15
        Caption = 'No. Penawaran :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object LPenawaran: TRzLabel
        Left = 978
        Top = 67
        Width = 67
        Height = 15
        Alignment = taRightJustify
        Caption = 'LPenawaran'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object RzLabel3: TRzLabel
        Left = 642
        Top = 5
        Width = 90
        Height = 15
        Caption = 'Tgl. Pengiriman :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object RzLabel13: TRzLabel
        Left = 225
        Top = 45
        Width = 80
        Height = 15
        Caption = 'PO. Customer :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object RzLabel8: TRzLabel
        Left = 17
        Top = 45
        Width = 53
        Height = 15
        Caption = 'Salesman'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object LSalesman: TRzLabel
        Left = 123
        Top = 67
        Width = 58
        Height = 15
        Alignment = taRightJustify
        Caption = 'LSalesman'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object LKirim: TRzLabel
        Left = 858
        Top = 35
        Width = 35
        Height = 15
        Alignment = taRightJustify
        Caption = 'LKirim'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object RzLabel7: TRzLabel
        Left = 432
        Top = 44
        Width = 104
        Height = 15
        Caption = 'Term Pembayaran :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object RzLabel5: TRzLabel
        Left = 640
        Top = 44
        Width = 88
        Height = 15
        Caption = 'COA Penjualan :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object LCoa: TRzLabel
        Left = 859
        Top = 67
        Width = 26
        Height = 15
        Alignment = taRightJustify
        Caption = 'LCoa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object txtreferensi: TRzEdit
        Left = 17
        Top = 21
        Width = 200
        Height = 23
        TabStop = False
        Color = clYellow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        FrameHotTrack = True
        FrameVisible = True
        ParentFont = False
        ReadOnly = True
        ReadOnlyColor = clYellow
        TabOnEnter = True
        TabOrder = 0
      end
      object dtptanggal: TNxDatePicker
        Left = 433
        Top = 21
        Width = 201
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '16/04/2017'
        OnChange = dtptanggalChange
        HideFocus = False
        Date = 42841.000000000000000000
        NoneCaption = 'None'
        TodayCaption = 'Today'
      end
      object txtcustomer: TRzButtonEdit
        Left = 225
        Top = 21
        Width = 200
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        FrameHotTrack = True
        FrameVisible = True
        ParentFont = False
        TabOnEnter = True
        TabOrder = 1
        OnKeyPress = txtcustomerKeyPress
        AllowKeyEdit = False
        OnButtonClick = txtcustomerButtonClick
      end
      object txtpenawaran: TRzButtonEdit
        Left = 913
        Top = 69
        Width = 200
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        FrameHotTrack = True
        FrameVisible = True
        ParentFont = False
        TabOnEnter = True
        TabOrder = 8
        Visible = False
        OnKeyPress = txtpenawaranKeyPress
        AllowKeyEdit = False
        OnButtonClick = txtpenawaranButtonClick
      end
      object cbselesai: TRzCheckBox
        Left = 1208
        Top = 13
        Width = 65
        Height = 17
        Anchors = [akTop, akRight]
        Caption = 'Selesai'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        HotTrack = True
        ParentFont = False
        State = cbUnchecked
        TabOrder = 9
      end
      object dtpkirim: TNxDatePicker
        Left = 641
        Top = 21
        Width = 201
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = '16/04/2017'
        HideFocus = False
        Date = 42841.000000000000000000
        NoneCaption = 'None'
        TodayCaption = 'Today'
      end
      object txtpo: TRzEdit
        Left = 225
        Top = 61
        Width = 200
        Height = 23
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        FrameHotTrack = True
        FrameVisible = True
        ParentFont = False
        ReadOnlyColor = clYellow
        TabOnEnter = True
        TabOrder = 5
      end
      object txtsalesman: TRzButtonEdit
        Left = 17
        Top = 61
        Width = 200
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        FrameHotTrack = True
        FrameVisible = True
        ParentFont = False
        TabOnEnter = True
        TabOrder = 4
        OnKeyPress = txtsalesmanKeyPress
        AllowKeyEdit = False
        OnButtonClick = txtsalesmanButtonClick
      end
      object cbapprove: TRzCheckBox
        Left = 1208
        Top = 29
        Width = 65
        Height = 17
        Anchors = [akTop, akRight]
        Caption = 'Approve'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        HotTrack = True
        ParentFont = False
        State = cbUnchecked
        TabOrder = 10
        Visible = False
      end
      object txtterm: TRzButtonEdit
        Left = 433
        Top = 61
        Width = 200
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        FrameHotTrack = True
        FrameVisible = True
        ParentFont = False
        TabOnEnter = True
        TabOrder = 6
        OnKeyPress = txttermKeyPress
        AllowKeyEdit = False
        OnButtonClick = txttermButtonClick
      end
      object txtcoa: TRzButtonEdit
        Left = 641
        Top = 61
        Width = 200
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        FrameHotTrack = True
        FrameVisible = True
        ParentFont = False
        TabOnEnter = True
        TabOrder = 7
        OnKeyPress = txtcoaKeyPress
        AllowKeyEdit = False
        OnButtonClick = txtcoaButtonClick
      end
    end
    object RzPanel2: TRzPanel
      Left = 1
      Top = 594
      Width = 1287
      Height = 41
      Align = alBottom
      BorderOuter = fsNone
      TabOrder = 2
      DesignSize = (
        1287
        41)
      object BtnRekam: TRzBitBtn
        Left = 1178
        Top = 8
        Anchors = [akRight, akBottom]
        Caption = 'Simpan'
        Color = 12615680
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BtnRekamClick
      end
      object BtnBatal: TRzBitBtn
        Left = 1092
        Top = 8
        Anchors = [akRight, akBottom]
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
      object BtnCari: TRzBitBtn
        Left = 15
        Top = 8
        Width = 90
        Caption = 'Cari Barang'
        Color = 12615680
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = False
        Visible = False
        OnClick = BtnCariClick
      end
    end
    object RzPanel3: TRzPanel
      Left = 1
      Top = 121
      Width = 1287
      Height = 473
      Align = alClient
      BorderOuter = fsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object RzPanel4: TRzPanel
        Left = 0
        Top = 348
        Width = 1287
        Height = 125
        Align = alBottom
        BorderOuter = fsNone
        TabOrder = 1
        DesignSize = (
          1287
          125)
        object RzLabel27: TRzLabel
          Left = 991
          Top = 99
          Width = 27
          Height = 15
          Anchors = [akTop, akRight]
          Caption = 'Total'
          FocusControl = BtnBatal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object RzLabel12: TRzLabel
          Left = 1080
          Top = 99
          Width = 3
          Height = 15
          Anchors = [akTop, akRight]
          Caption = ':'
          FocusControl = BtnBatal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object RzLabel1: TRzLabel
          Left = 991
          Top = 43
          Width = 22
          Height = 15
          Anchors = [akTop, akRight]
          Caption = 'PPN'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object RzLabel6: TRzLabel
          Left = 1079
          Top = 43
          Width = 3
          Height = 15
          Anchors = [akTop, akRight]
          Caption = ':'
          FocusControl = BtnBatal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object BtnBiaya: TRzToolButton
          Left = 1259
          Top = 68
          Height = 24
          ImageIndex = 4
          Images = DM.IL16
          UseToolbarButtonSize = False
          Anchors = [akTop, akRight]
          OnClick = BtnBiayaClick
        end
        object RzLabel9: TRzLabel
          Left = 991
          Top = 71
          Width = 57
          Height = 15
          Anchors = [akTop, akRight]
          Caption = 'Biaya Lain'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object RzLabel11: TRzLabel
          Left = 1073
          Top = 70
          Width = 3
          Height = 15
          Anchors = [akTop, akRight]
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object LBiayaLain: TRzLabel
          Left = 520
          Top = 46
          Width = 59
          Height = 15
          Caption = 'LBiayaLain'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object RzLabel14: TRzLabel
          Left = 991
          Top = 15
          Width = 46
          Height = 15
          Anchors = [akTop, akRight]
          Caption = 'Subtotal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object RzLabel15: TRzLabel
          Left = 1079
          Top = 15
          Width = 3
          Height = 15
          Anchors = [akTop, akRight]
          Caption = ':'
          FocusControl = BtnBatal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object txttotal: TRzNumericEdit
          Left = 1089
          Top = 96
          Width = 165
          Height = 24
          TabStop = False
          Anchors = [akTop, akRight]
          AutoSize = False
          Color = clYellow
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          FrameHotTrack = True
          FrameVisible = True
          ParentFont = False
          ReadOnly = True
          ReadOnlyColor = clYellow
          TabOnEnter = True
          TabOrder = 3
          IntegersOnly = False
          DisplayFormat = '#,#0.##'
        end
        object txtsubtotal: TRzNumericEdit
          Left = 1089
          Top = 12
          Width = 165
          Height = 24
          TabStop = False
          Anchors = [akTop, akRight]
          AutoSize = False
          Color = clYellow
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          FrameHotTrack = True
          FrameVisible = True
          ParentFont = False
          ReadOnly = True
          ReadOnlyColor = clYellow
          TabOnEnter = True
          TabOrder = 0
          IntegersOnly = False
          DisplayFormat = '#,#0.##'
        end
        object txtpajak: TRzNumericEdit
          Left = 1089
          Top = 40
          Width = 165
          Height = 24
          TabStop = False
          Anchors = [akTop, akRight]
          AutoSize = False
          Color = clYellow
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          FrameHotTrack = True
          FrameVisible = True
          ParentFont = False
          ReadOnly = True
          ReadOnlyColor = clYellow
          TabOnEnter = True
          TabOrder = 1
          IntegersOnly = False
          DisplayFormat = '#,#0.##'
        end
        object txtdiskondays: TRzNumericEdit
          Left = 331
          Top = 64
          Width = 50
          Height = 23
          Anchors = [akTop, akRight]
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          FrameHotTrack = True
          FrameVisible = True
          ParentFont = False
          TabOnEnter = True
          TabOrder = 4
          Visible = False
          IntegersOnly = False
          DisplayFormat = '#,#0.##'
        end
        object txtduedate: TRzNumericEdit
          Left = 371
          Top = 64
          Width = 50
          Height = 23
          Anchors = [akTop, akRight]
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          FrameHotTrack = True
          FrameVisible = True
          ParentFont = False
          TabOnEnter = True
          TabOrder = 5
          Visible = False
          IntegersOnly = False
          DisplayFormat = '#,#0.##'
        end
        object txtearlydiscount: TRzNumericEdit
          Left = 419
          Top = 64
          Width = 50
          Height = 23
          Anchors = [akTop, akRight]
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          FrameHotTrack = True
          FrameVisible = True
          ParentFont = False
          TabOnEnter = True
          TabOrder = 6
          Visible = False
          IntegersOnly = False
          DisplayFormat = '#,#0.##'
        end
        object txtlatecharge: TRzNumericEdit
          Left = 443
          Top = 64
          Width = 50
          Height = 23
          Anchors = [akTop, akRight]
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          FrameHotTrack = True
          FrameVisible = True
          ParentFont = False
          TabOnEnter = True
          TabOrder = 7
          Visible = False
          IntegersOnly = False
          DisplayFormat = '#,#0.##'
        end
        object txtbiaya: TRzNumericEdit
          Left = 1089
          Top = 68
          Width = 165
          Height = 24
          Anchors = [akTop, akRight]
          AutoSize = False
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          FrameHotTrack = True
          FrameVisible = True
          ParentFont = False
          ReadOnlyColor = clYellow
          TabOnEnter = True
          TabOrder = 2
          OnChange = txtbiayaChange
          IntegersOnly = False
          DisplayFormat = '#,#0.##'
        end
      end
      object dbgbarang: TNextGrid6
        Left = 0
        Top = 0
        Width = 1287
        Height = 348
        Align = alClient
        ParentColor = False
        TabOrder = 0
        OnExit = dbgbarangExit
        OnKeyPress = dbgbarangKeyPress
        ActiveView = NxReportGridView61
        ActiveViewIndex = 0
        AlternatingRowColor = clBtnFace
        AppearanceOptions = [aoAlternatingRowColors, aoBoldSelectedText, aoHintIndicators, aoStyleColors]
        RowHeight = 25
        ScrollBars = [sbHorizontal, sbVertical]
        Style = stModern
        WantTabs = True
        OnAfterEdit = dbgbarangAfterEdit
        OnCellClick = dbgbarangCellClick
        OnCellDblClick = dbgbarangCellDblClick
        OnSelectionChanged = dbgbarangSelectionChanged
        object NxReportGridView61: TNxReportGridView6
          ColumnMoving = False
          GridLinesStyle = glActiveOnly
          HeaderHeight = 25
          ColorOverflowInactiveCells = False
        end
        object NxTextColumn65: TNxTextColumn6
          Color = clYellow
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footer.FormatMask = '#,##0.00'
          Header.Alignment = taCenter
          Header.Caption = 'COA'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -13
          Header.Font.Name = 'Calibri'
          Header.Font.Style = []
          Header.ParentFont = False
          Index = 0
          ParentColor = False
          PlaceholderText = 'Text Text'
          Position = 0
        end
        object NxTextColumn61: TNxTextColumn6
          Color = clYellow
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footer.FormatMask = '#,##0.00'
          Header.Alignment = taCenter
          Header.Caption = 'Kode'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -13
          Header.Font.Name = 'Calibri'
          Header.Font.Style = []
          Header.ParentFont = False
          Index = 1
          ParentColor = False
          PlaceholderText = 'Text Text'
          Position = 1
          Width = 100
        end
        object NxTextColumn62: TNxTextColumn6
          AutoSize = True
          Color = clYellow
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footer.FormatMask = '#,##0.00'
          Header.Alignment = taCenter
          Header.Caption = 'Nama'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -13
          Header.Font.Name = 'Calibri'
          Header.Font.Style = []
          Header.ParentFont = False
          Index = 2
          ParentColor = False
          PlaceholderText = 'Text Text'
          Position = 2
          Width = 498
        end
        object NxNumberColumn62: TNxNumberColumn6
          AutoEditing = True
          Editing = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footer.FormatMask = '#,##0.00'
          Header.Alignment = taCenter
          Header.Caption = 'Qty'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -13
          Header.Font.Name = 'Calibri'
          Header.Font.Style = []
          Header.ParentFont = False
          Index = 3
          PlaceholderText = '1742.50'
          Position = 3
          FormatMask = '#,#0.##'
          Increment = 1.000000000000000000
          SpinButtons = False
          InsertString = '0'
        end
        object NxTextColumn63: TNxTextColumn6
          Color = clYellow
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footer.FormatMask = '#,##0.00'
          Header.Alignment = taCenter
          Header.Caption = 'Satuan'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -13
          Header.Font.Name = 'Calibri'
          Header.Font.Style = []
          Header.ParentFont = False
          Index = 4
          ParentColor = False
          PlaceholderText = 'Text Text'
          Position = 4
        end
        object NxNumberColumn63: TNxNumberColumn6
          AutoEditing = True
          Editing = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footer.FormatMask = '#,##0.00'
          Header.Alignment = taCenter
          Header.Caption = 'Harga'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -13
          Header.Font.Name = 'Calibri'
          Header.Font.Style = []
          Header.ParentFont = False
          Index = 5
          PlaceholderText = '1742.50'
          Position = 5
          FormatMask = '#,#0.##'
          Increment = 1.000000000000000000
          SpinButtons = False
          InsertString = '0'
        end
        object NxNumberColumn64: TNxNumberColumn6
          AutoEditing = True
          Editing = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footer.FormatMask = '#,##0.00'
          Header.Alignment = taCenter
          Header.Caption = 'Disc (%)'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -13
          Header.Font.Name = 'Calibri'
          Header.Font.Style = []
          Header.ParentFont = False
          Index = 6
          PlaceholderText = '1742.50'
          Position = 6
          FormatMask = '#,##0.00'
          Increment = 1.000000000000000000
          SpinButtons = False
          InsertString = '0'
        end
        object NxNumberColumn65: TNxNumberColumn6
          AutoEditing = True
          Editing = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footer.FormatMask = '#,##0.00'
          Header.Alignment = taCenter
          Header.Caption = 'Disc'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -13
          Header.Font.Name = 'Calibri'
          Header.Font.Style = []
          Header.ParentFont = False
          Index = 7
          PlaceholderText = '1742.50'
          Position = 7
          FormatMask = '#,#0.##'
          Increment = 1.000000000000000000
          SpinButtons = False
          InsertString = '0'
        end
        object NxNumberColumn66: TNxNumberColumn6
          Color = clYellow
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footer.FormatMask = '#,##0.00'
          Header.Alignment = taCenter
          Header.Caption = 'Subtotal'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -13
          Header.Font.Name = 'Calibri'
          Header.Font.Style = []
          Header.ParentFont = False
          Index = 8
          ParentColor = False
          PlaceholderText = '1742.50'
          Position = 8
          FormatMask = '#,#0.##'
          Increment = 1.000000000000000000
          InsertString = '0'
        end
        object NxTextColumn64: TNxTextColumn6
          Color = clYellow
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footer.FormatMask = '#,##0.00'
          Header.Alignment = taCenter
          Header.Caption = 'PPN'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -13
          Header.Font.Name = 'Calibri'
          Header.Font.Style = []
          Header.ParentFont = False
          Index = 9
          ParentColor = False
          PlaceholderText = 'Text Text'
          Position = 9
        end
        object NxIconColumn61: TNxIconColumn6
          Alignment = taCenter
          Color = clYellow
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footer.FormatMask = '#,##0.00'
          Header.Alignment = taCenter
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -13
          Header.Font.Name = 'Calibri'
          Header.Font.Style = []
          Header.ParentFont = False
          Index = 10
          ParentColor = False
          PlaceholderText = '0'
          Position = 10
          Width = 30
          Button = True
          Images = DM.PicDel
          InsertString = '0'
        end
        object NxNumberColumn67: TNxNumberColumn6
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footer.FormatMask = '#,##0.00'
          Header.Caption = 'nobarang'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'MS Sans Serif'
          Header.Font.Style = []
          Index = 11
          PlaceholderText = '1742.50'
          Position = 11
          Visible = False
          FormatMask = '#,##0.00'
          Increment = 1.000000000000000000
          InsertString = '0'
        end
        object NxNumberColumn68: TNxNumberColumn6
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footer.FormatMask = '#,##0.00'
          Header.Caption = 'nosatuan'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'MS Sans Serif'
          Header.Font.Style = []
          Index = 12
          PlaceholderText = '1742.50'
          Position = 12
          Visible = False
          FormatMask = '#,##0.00'
          Increment = 1.000000000000000000
          InsertString = '0'
        end
        object NxNumberColumn69: TNxNumberColumn6
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footer.FormatMask = '#,##0.00'
          Header.Caption = 'faktor'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'MS Sans Serif'
          Header.Font.Style = []
          Index = 13
          PlaceholderText = '1742.50'
          Position = 13
          Visible = False
          FormatMask = '#,##0.00'
          Increment = 1.000000000000000000
          InsertString = '0'
        end
        object NxNumberColumn610: TNxNumberColumn6
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footer.FormatMask = '#,##0.00'
          Header.Caption = 'nopajak'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'MS Sans Serif'
          Header.Font.Style = []
          Index = 14
          PlaceholderText = '1742.50'
          Position = 14
          Visible = False
          FormatMask = '#,##0.00'
          Increment = 1.000000000000000000
          InsertString = '0'
        end
        object NxNumberColumn611: TNxNumberColumn6
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footer.FormatMask = '#,##0.00'
          Header.Caption = 'tipe'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'MS Sans Serif'
          Header.Font.Style = []
          Index = 15
          PlaceholderText = '1742.50'
          Position = 15
          Visible = False
          FormatMask = '#,##0.00'
          Increment = 1.000000000000000000
          InsertString = '0'
        end
        object NxNumberColumn612: TNxNumberColumn6
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footer.FormatMask = '#,##0.00'
          Header.Caption = 'persen'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'MS Sans Serif'
          Header.Font.Style = []
          Index = 16
          PlaceholderText = '1742.50'
          Position = 16
          Visible = False
          FormatMask = '#,##0.00'
          Increment = 1.000000000000000000
          InsertString = '0'
        end
        object NxNumberColumn613: TNxNumberColumn6
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footer.FormatMask = '#,##0.00'
          Header.Caption = 'dpp'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'MS Sans Serif'
          Header.Font.Style = []
          Index = 17
          PlaceholderText = '1742.50'
          Position = 17
          Visible = False
          FormatMask = '#,##0.00'
          Increment = 1.000000000000000000
          InsertString = '0'
        end
        object NxNumberColumn614: TNxNumberColumn6
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footer.FormatMask = '#,##0.00'
          Header.Caption = 'ppn'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'MS Sans Serif'
          Header.Font.Style = []
          Index = 18
          PlaceholderText = '1742.50'
          Position = 18
          Visible = False
          FormatMask = '#,##0.00'
          Increment = 1.000000000000000000
          InsertString = '0'
        end
        object NxNumberColumn61: TNxNumberColumn6
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footer.FormatMask = '#,##0.00'
          Header.Caption = 'nosodetail'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'MS Sans Serif'
          Header.Font.Style = []
          Index = 19
          PlaceholderText = '1742.50'
          Position = 19
          Visible = False
          FormatMask = '#,##0.00'
          Increment = 1.000000000000000000
          InsertString = '0'
        end
        object NxNumberColumn615: TNxNumberColumn6
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footer.FormatMask = '#,##0.00'
          Header.Caption = 'noakunpenjualan'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'MS Sans Serif'
          Header.Font.Style = []
          Index = 20
          PlaceholderText = '1742.50'
          Position = 20
          Visible = False
          FormatMask = '#,##0.00'
          Increment = 1.000000000000000000
          InsertString = '0'
        end
      end
    end
  end
  object Q1: TZQuery
    Connection = DM.con
    Params = <>
    Left = 961
    Top = 248
  end
end
