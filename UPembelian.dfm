object Frm_Pembelian: TFrm_Pembelian
  Left = 101
  Top = 34
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Penerimaan Pembelian'
  ClientHeight = 617
  ClientWidth = 1078
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 15
  object RzGroupBox1: TRzGroupBox
    Left = 0
    Top = 0
    Width = 1078
    Height = 617
    Align = alClient
    Caption = 'Penerimaan Pembelian'
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
      Width = 1076
      Height = 89
      Align = alTop
      BorderOuter = fsNone
      TabOrder = 0
      object RzLabel1: TRzLabel
        Left = 161
        Top = 5
        Width = 52
        Height = 15
        Caption = 'Supplier :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object RzLabel2: TRzLabel
        Left = 17
        Top = 5
        Width = 93
        Height = 15
        Caption = 'No. Penerimaan :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object RzLabel4: TRzLabel
        Left = 617
        Top = 5
        Width = 48
        Height = 15
        Caption = 'Tanggal :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object LSupplier: TRzLabel
        Left = 201
        Top = 29
        Width = 51
        Height = 15
        Caption = 'LSupplier'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object RzLabel18: TRzLabel
        Left = 473
        Top = 5
        Width = 43
        Height = 15
        Caption = 'No. PO :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object LID: TRzLabel
        Left = 628
        Top = 27
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
      object LPO: TRzLabel
        Left = 536
        Top = 24
        Width = 21
        Height = 15
        Caption = 'LPO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object LPosting: TRzLabel
        Left = 761
        Top = 37
        Width = 45
        Height = 15
        Caption = 'LPosting'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object txtsupplier: TRzButtonEdit
        Left = 161
        Top = 21
        Width = 304
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
        OnKeyPress = txtsupplierKeyPress
        AllowKeyEdit = False
        OnButtonClick = txtsupplierButtonClick
      end
      object txtreferensi: TRzEdit
        Left = 17
        Top = 21
        Width = 136
        Height = 23
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
      object txtpo: TRzButtonEdit
        Left = 473
        Top = 21
        Width = 136
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
        TabOrder = 2
        OnKeyPress = txtpoKeyPress
        AllowKeyEdit = False
        OnButtonClick = txtpoButtonClick
      end
      object dtpfaktur: TNxDatePicker
        Left = 616
        Top = 21
        Width = 137
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = '4/16/2017'
        OnChange = dtpfakturChange
        HideFocus = False
        Date = 42841.000000000000000000
        NoneCaption = 'None'
        TodayCaption = 'Today'
      end
      object RzPanel5: TRzPanel
        Left = 0
        Top = 64
        Width = 1076
        Height = 25
        Align = alBottom
        Alignment = taLeftJustify
        BorderOuter = fsNone
        Caption = 'Detil Barang'
        Color = 16744448
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
    end
    object RzPanel2: TRzPanel
      Left = 1
      Top = 575
      Width = 1076
      Height = 41
      Align = alBottom
      BorderOuter = fsNone
      TabOrder = 2
      DesignSize = (
        1076
        41)
      object BtnRekam: TRzBitBtn
        Left = 981
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
        Left = 895
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
    end
    object RzPanel3: TRzPanel
      Left = 1
      Top = 113
      Width = 1076
      Height = 462
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
        Top = 389
        Width = 1076
        Height = 73
        Align = alBottom
        BorderOuter = fsNone
        TabOrder = 0
        DesignSize = (
          1076
          73)
        object RzLabel13: TRzLabel
          Left = 762
          Top = 11
          Width = 51
          Height = 15
          Anchors = [akTop, akRight]
          Caption = 'Total Qty.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object RzLabel27: TRzLabel
          Left = 762
          Top = 39
          Width = 54
          Height = 15
          Anchors = [akTop, akRight]
          Caption = 'Total Item'
          FocusControl = BtnBatal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object RzLabel26: TRzLabel
          Left = 881
          Top = 38
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
        object RzLabel14: TRzLabel
          Left = 881
          Top = 10
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
        object txtqty: TRzNumericEdit
          Left = 895
          Top = 8
          Width = 161
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
          FocusColor = clWhite
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
        object txtitem: TRzNumericEdit
          Left = 895
          Top = 36
          Width = 161
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
      end
      object dbgbarang: TNextGrid6
        Left = 0
        Top = 0
        Width = 1076
        Height = 389
        Align = alClient
        ParentColor = False
        TabOrder = 1
        OnKeyPress = dbgbarangKeyPress
        ActiveView = NxReportGridView61
        ActiveViewIndex = 0
        AlternatingRowColor = clBtnFace
        AppearanceOptions = [aoAlternatingRowColors, aoBoldSelectedText, aoHintIndicators, aoStyleColors]
        RowHeight = 25
        ScrollBars = [sbHorizontal, sbVertical]
        Style = stModern
        OnAfterEdit = dbgbarangAfterEdit
        OnCellDblClick = dbgbarangCellDblClick
        object NxReportGridView61: TNxReportGridView6
          ColumnMoving = False
          GridLinesStyle = glActiveOnly
          HeaderHeight = 25
          ColorOverflowInactiveCells = False
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
          Index = 0
          ParentColor = False
          PlaceholderText = 'Text Text'
          Position = 0
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
          Index = 1
          ParentColor = False
          PlaceholderText = 'Text Text'
          Position = 1
          Width = 567
        end
        object NxNumberColumn61: TNxNumberColumn6
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
          Header.Caption = 'Qty. Order'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -13
          Header.Font.Name = 'Calibri'
          Header.Font.Style = []
          Header.ParentFont = False
          Index = 2
          ParentColor = False
          PlaceholderText = '1742.50'
          Position = 2
          FormatMask = '#,#0.##'
          Increment = 1.000000000000000000
          InsertString = '0'
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
          Visible = False
          FormatMask = '#,#0.##'
          Increment = 1.000000000000000000
          SpinButtons = False
          InsertString = '0'
        end
        object NxNumberColumn64: TNxNumberColumn6
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
          Visible = False
          FormatMask = '#,##0.00'
          Increment = 1.000000000000000000
          SpinButtons = False
          InsertString = '0'
        end
        object NxNumberColumn65: TNxNumberColumn6
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
          Visible = False
          FormatMask = '#,#0.##'
          Increment = 1.000000000000000000
          SpinButtons = False
          InsertString = '0'
        end
        object NxNumberColumn66: TNxNumberColumn6
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
          Visible = False
          FormatMask = '#,#0.##'
          Increment = 1.000000000000000000
          InsertString = '0'
        end
        object NxTextColumn64: TNxTextColumn6
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
          Visible = False
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
          Header.Caption = 'Gudang'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -13
          Header.Font.Name = 'Calibri'
          Header.Font.Style = []
          Header.ParentFont = False
          Index = 10
          ParentColor = False
          PlaceholderText = 'Text Text'
          Position = 10
          Width = 150
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
        object NxNumberColumn617: TNxNumberColumn6
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
          Header.Caption = 'noakunpersediaan'
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
        object NxNumberColumn618: TNxNumberColumn6
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
          Header.Caption = 'nogudang'
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
          Index = 16
          PlaceholderText = '1742.50'
          Position = 16
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
          Index = 17
          PlaceholderText = '1742.50'
          Position = 17
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
          Index = 18
          PlaceholderText = '1742.50'
          Position = 18
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
          Index = 19
          PlaceholderText = '1742.50'
          Position = 19
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
          Index = 20
          PlaceholderText = '1742.50'
          Position = 20
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
          Header.Caption = 'noakunpajakpembelian'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'MS Sans Serif'
          Header.Font.Style = []
          Index = 21
          PlaceholderText = '1742.50'
          Position = 21
          Visible = False
          FormatMask = '#,##0.00'
          Increment = 1.000000000000000000
          InsertString = '0'
        end
        object NxNumberColumn619: TNxNumberColumn6
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
          Header.Caption = 'tipebarang'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'MS Sans Serif'
          Header.Font.Style = []
          Index = 22
          PlaceholderText = '1742.50'
          Position = 22
          Visible = False
          FormatMask = '#,##0.00'
          Increment = 1.000000000000000000
          InsertString = '0'
        end
        object NxNumberColumn616: TNxNumberColumn6
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
          Header.Caption = 'noakunbelumtertagih'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'MS Sans Serif'
          Header.Font.Style = []
          Index = 23
          PlaceholderText = '1742.50'
          Position = 23
          Visible = False
          FormatMask = '#,##0.00'
          Increment = 1.000000000000000000
          InsertString = '0'
        end
        object NxNumberColumn620: TNxNumberColumn6
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
          Header.Caption = 'noakunpajakpembelianblm'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'MS Sans Serif'
          Header.Font.Style = []
          Index = 24
          PlaceholderText = '1742.50'
          Position = 24
          Visible = False
          FormatMask = '#,##0.00'
          Increment = 1.000000000000000000
          InsertString = '0'
        end
        object NxNumberColumn621: TNxNumberColumn6
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
          Header.Caption = 'nopph'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'MS Sans Serif'
          Header.Font.Style = []
          Index = 25
          PlaceholderText = '1742.50'
          Position = 25
          Visible = False
          FormatMask = '#,##0.00'
          Increment = 1.000000000000000000
          InsertString = '0'
        end
        object NxNumberColumn622: TNxNumberColumn6
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
          Header.Caption = 'persenpph'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'MS Sans Serif'
          Header.Font.Style = []
          Index = 26
          PlaceholderText = '1742.50'
          Position = 26
          Visible = False
          FormatMask = '#,##0.00'
          Increment = 1.000000000000000000
          InsertString = '0'
        end
        object NxNumberColumn623: TNxNumberColumn6
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
          Header.Caption = 'akunpph'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'MS Sans Serif'
          Header.Font.Style = []
          Index = 27
          PlaceholderText = '1742.50'
          Position = 27
          Visible = False
          FormatMask = '#,##0.00'
          Increment = 1.000000000000000000
          InsertString = '0'
        end
        object NxNumberColumn624: TNxNumberColumn6
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
          Header.Caption = 'pph'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'MS Sans Serif'
          Header.Font.Style = []
          Index = 28
          PlaceholderText = '1742.50'
          Position = 28
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
    Left = 937
    Top = 24
  end
  object QKas: TZQuery
    Connection = DM.con
    SQL.Strings = (
      'select * from tbl_akun where kas=1 and aktif=1')
    Params = <>
    Left = 968
    Top = 24
  end
end
