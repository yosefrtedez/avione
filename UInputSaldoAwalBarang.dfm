object Frm_EntriSaldoAwal: TFrm_EntriSaldoAwal
  Left = 544
  Top = 240
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Entri Saldo Awal Barang'
  ClientHeight = 191
  ClientWidth = 378
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 9
    Top = 41
    Width = 74
    Height = 15
    Caption = 'Nama Barang'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 7
    Top = 68
    Width = 53
    Height = 15
    Caption = 'Stok Awal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 121
    Top = 41
    Width = 3
    Height = 15
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 119
    Top = 68
    Width = 3
    Height = 15
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object LBarang: TLabel
    Left = 161
    Top = 45
    Width = 44
    Height = 15
    Caption = 'LBarang'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object LSatuan: TLabel
    Left = 273
    Top = 68
    Width = 43
    Height = 15
    Caption = 'LSatuan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label3: TLabel
    Left = 7
    Top = 95
    Width = 71
    Height = 15
    Caption = 'HPP / Satuan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 119
    Top = 95
    Width = 3
    Height = 15
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 7
    Top = 122
    Width = 42
    Height = 15
    Caption = 'Tanggal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 119
    Top = 122
    Width = 3
    Height = 15
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object LID: TLabel
    Left = 305
    Top = 94
    Width = 17
    Height = 15
    Caption = 'LID'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object LGudang: TLabel
    Left = 313
    Top = 102
    Width = 47
    Height = 15
    Caption = 'LGudang'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 378
    Height = 25
    Align = alTop
    Alignment = taLeftJustify
    BorderOuter = fsNone
    Caption = 'Entri Saldo Awal Barang'
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
    Top = 154
    Width = 378
    Height = 37
    Align = alBottom
    BorderOuter = fsNone
    TabOrder = 5
    DesignSize = (
      378
      37)
    object BtSave: TRzBitBtn
      Left = 295
      Top = 6
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
    object BtnExit: TRzBitBtn
      Left = 215
      Top = 6
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
      OnClick = BtnExitClick
    end
  end
  object txtstok: TRzNumericEdit
    Left = 132
    Top = 65
    Width = 110
    Height = 23
    FrameHotTrack = True
    FrameVisible = True
    TabOnEnter = True
    TabOrder = 2
    IntegersOnly = False
    DisplayFormat = '#,#0.##'
  end
  object txthpp: TRzNumericEdit
    Left = 132
    Top = 92
    Width = 110
    Height = 23
    FrameHotTrack = True
    FrameVisible = True
    ReadOnlyColor = clYellow
    TabOnEnter = True
    TabOrder = 4
    IntegersOnly = False
    DisplayFormat = '#,#0.##'
  end
  object dtptanggal: TRzDateTimePicker
    Left = 132
    Top = 120
    Width = 110
    Height = 23
    Date = 42612.592252604170000000
    Time = 42612.592252604170000000
    TabOrder = 6
    FrameHotTrack = True
    FrameVisible = True
  end
  object txtnama: TRzEdit
    Left = 132
    Top = 38
    Width = 237
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
    TabOrder = 1
  end
  object txtsatuan: TRzButtonEdit
    Left = 248
    Top = 65
    Width = 121
    Height = 23
    FrameHotTrack = True
    FrameVisible = True
    TabOrder = 3
    OnKeyPress = txtsatuanKeyPress
    AllowKeyEdit = False
    OnButtonClick = txtsatuanButtonClick
  end
  object txtfaktor: TRzNumericEdit
    Left = 252
    Top = 116
    Width = 110
    Height = 23
    FrameHotTrack = True
    FrameVisible = True
    TabOnEnter = True
    TabOrder = 7
    Visible = False
    IntegersOnly = False
    DisplayFormat = '#,#0.##'
  end
  object ZQuery1: TZQuery
    Connection = DM.con
    Params = <>
    Left = 336
  end
end
