object Frm_TransaksiGiroKeluar: TFrm_TransaksiGiroKeluar
  Left = 652
  Top = 298
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Informasi Transaksi Giro'
  ClientHeight = 176
  ClientWidth = 458
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
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
    Width = 458
    Height = 25
    Align = alTop
    Alignment = taLeftJustify
    BorderOuter = fsNone
    Caption = 'Informasi Transaksi Giro'
    Color = 16744448
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 135
    Width = 458
    Height = 41
    Align = alBottom
    BorderOuter = fsNone
    TabOrder = 2
    object BtnSimpan: TRzBitBtn
      Left = 373
      Top = 8
      Caption = 'Ok'
      Color = 12615680
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnSimpanClick
    end
    object BtnBatal: TRzBitBtn
      Left = 288
      Top = 8
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
    Left = 0
    Top = 25
    Width = 458
    Height = 110
    Align = alClient
    BorderOuter = fsPopup
    Color = 7915456
    TabOrder = 1
    object RzLabel2: TRzLabel
      Left = 16
      Top = 11
      Width = 70
      Height = 15
      Caption = 'Nomor Giro :'
    end
    object RzLabel3: TRzLabel
      Left = 16
      Top = 39
      Width = 73
      Height = 15
      Caption = 'Jatuh Tempo :'
    end
    object RzLabel1: TRzLabel
      Left = 16
      Top = 65
      Width = 102
      Height = 15
      Caption = 'Akun Hutang Giro :'
    end
    object LAkunGiro: TRzLabel
      Left = 288
      Top = 73
      Width = 56
      Height = 15
      Caption = 'LAkunGiro'
      Visible = False
    end
    object txtnomorgiro: TRzEdit
      Left = 128
      Top = 8
      Width = 321
      Height = 23
      FrameHotTrack = True
      FrameVisible = True
      TabOnEnter = True
      TabOrder = 0
    end
    object dtptanggal: TNxDatePicker
      Left = 128
      Top = 36
      Width = 153
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '16/04/2017'
      HideFocus = False
      Date = 42841.000000000000000000
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object txtakun: TRzButtonEdit
      Left = 128
      Top = 63
      Width = 153
      Height = 23
      FrameHotTrack = True
      FrameVisible = True
      TabOrder = 2
      OnKeyPress = txtakunKeyPress
      OnButtonClick = txtakunButtonClick
    end
  end
  object ZQuery1: TZQuery
    Params = <>
    Left = 360
    Top = 57
  end
end
