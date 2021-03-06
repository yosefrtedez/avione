object Frm_SQLScript: TFrm_SQLScript
  Left = 306
  Top = 139
  Width = 928
  Height = 480
  BorderIcons = [biSystemMenu]
  Caption = 'SQL Script Executive'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
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
    Caption = 'SQL Script Executive'
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
    Top = 25
    Width = 912
    Height = 140
    Align = alTop
    BorderOuter = fsNone
    TabOrder = 1
    object txtsql: TRzMemo
      Left = 0
      Top = 0
      Width = 912
      Height = 140
      Align = alClient
      TabOrder = 0
      FrameHotTrack = True
      FrameVisible = True
    end
  end
  object RzPanel3: TRzPanel
    Left = 0
    Top = 400
    Width = 912
    Height = 41
    Align = alBottom
    BorderOuter = fsNone
    TabOrder = 2
    DesignSize = (
      912
      41)
    object BtnClear: TRzBitBtn
      Left = 8
      Top = 8
      Caption = 'Clear'
      Color = 12615680
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnClearClick
    end
    object BtnExecute: TRzBitBtn
      Left = 88
      Top = 8
      Caption = 'Execute'
      Color = 12615680
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BtnExecuteClick
    end
    object BtnClose: TRzBitBtn
      Left = 832
      Top = 8
      Anchors = [akTop, akRight]
      Caption = 'Keluar'
      Color = 12615680
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BtnCloseClick
    end
    object BtnOpen: TRzBitBtn
      Left = 168
      Top = 8
      Caption = 'Open'
      Color = 12615680
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BtnOpenClick
    end
  end
  object RzPanel4: TRzPanel
    Left = 0
    Top = 165
    Width = 912
    Height = 235
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 3
    object dbgtable: TRzDBGrid
      Left = 0
      Top = 0
      Width = 912
      Height = 235
      Align = alClient
      DataSource = DSSQL
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Calibri'
      TitleFont.Style = []
      FrameHotTrack = True
      FrameVisible = True
    end
  end
  object QSQL: TZQuery
    Connection = DM.con
    Params = <>
    Left = 176
    Top = 157
  end
  object DSSQL: TDataSource
    DataSet = QSQL
    Left = 176
    Top = 185
  end
end
