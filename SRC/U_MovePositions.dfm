object F_MovePosition: TF_MovePosition
  Left = 367
  Top = 225
  BorderStyle = bsDialog
  Caption = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
  ClientHeight = 317
  ClientWidth = 680
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  DesignSize = (
    680
    317)
  PixelsPerInch = 96
  TextHeight = 13
  object GridMovePositions: TDBGridEh
    Left = 0
    Top = 0
    Width = 681
    Height = 249
    AutoFitColWidths = True
    DynProps = <>
    Flat = True
    IndicatorOptions = [gioShowRowIndicatorEh]
    TabOrder = 0
    VertScrollBar.VisibleMode = sbAlwaysShowEh
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470
        Width = 50
      end
      item
        DynProps = <>
        EditButtons = <>
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 214
      end
      item
        DynProps = <>
        EditButtons = <>
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1083'-'#1074#1086
        Width = 71
      end
      item
        DynProps = <>
        EditButtons = <>
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1045#1076'. '#1080#1079#1084'.'
        Width = 90
      end
      item
        DynProps = <>
        EditButtons = <>
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
        Width = 75
      end
      item
        DynProps = <>
        EditButtons = <>
        Footers = <>
        PickList.Strings = (
          'gfgf'
          'fggfg'
          'fgfgg')
        Title.Alignment = taCenter
        Title.Caption = #1057#1082#1083#1072#1076
        Width = 141
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object CancelMove: TRzBitBtn
    Left = 600
    Top = 288
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    HotTrack = True
    TabOrder = 1
    Kind = bkCancel
  end
  object ApplyMove: TRzBitBtn
    Left = 520
    Top = 288
    Anchors = [akRight, akBottom]
    HotTrack = True
    TabOrder = 2
    OnClick = ApplyMoveClick
    Kind = bkOK
  end
  object RzBitBtn1: TRzBitBtn
    Left = 0
    Top = 256
    Width = 169
    Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
    HotTrack = True
    TabOrder = 3
    ImageIndex = 2
    Images = F_Main.ProjIcon
  end
end
