object Frm_MenuBukuBesar: TFrm_MenuBukuBesar
  Left = 72
  Top = 45
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Menu Buku Besar'
  ClientHeight = 636
  ClientWidth = 1289
  Color = clWhite
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
    Height = 137
    Align = alTop
    BorderColor = clBlack
    BorderOuter = fsGroove
    Caption = 'Transaksi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    GroupStyle = gsUnderline
    ParentFont = False
    TabOrder = 0
    Transparent = True
    object RzPanel1: TRzPanel
      Left = 2
      Top = 25
      Width = 1285
      Height = 110
      Align = alTop
      BorderOuter = fsNone
      TabOrder = 0
      Transparent = True
      object BtnBukuBesar: TRzToolButton
        Left = 150
        Top = 0
        Width = 150
        Height = 110
        ImageIndex = 28
        Images = DM.I64
        Layout = blGlyphTop
        ShowCaption = True
        UseToolbarButtonLayout = False
        UseToolbarButtonSize = False
        UseToolbarShowCaption = False
        Align = alLeft
        Caption = 'Buku Besar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnBukuBesarClick
      end
      object BtnMenu: TRzToolButton
        Left = 300
        Top = 0
        Width = 150
        Height = 110
        ImageIndex = 31
        Images = DM.I64
        Layout = blGlyphTop
        ShowCaption = True
        UseToolbarButtonLayout = False
        UseToolbarButtonSize = False
        UseToolbarShowCaption = False
        Align = alLeft
        Caption = 'Daftar Jurnal Memorial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnMenuClick
      end
      object BtnJurnalUmum: TRzToolButton
        Left = 0
        Top = 0
        Width = 150
        Height = 110
        ImageIndex = 30
        Images = DM.I64
        Layout = blGlyphTop
        ShowCaption = True
        UseToolbarButtonLayout = False
        UseToolbarButtonSize = False
        UseToolbarShowCaption = False
        Align = alLeft
        Caption = 'Jurnal Memorial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnJurnalUmumClick
      end
    end
  end
end