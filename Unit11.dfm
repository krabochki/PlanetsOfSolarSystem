object AliensPuzzle: TAliensPuzzle
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1048#1085#1086#1087#1083#1072#1085#1077#1090#1085#1099#1077' '#1087#1072#1079#1079#1083#1099
  ClientHeight = 640
  ClientWidth = 1280
  Color = 12343454
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnMouseDown = FormMouseDown
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 611
    Top = 337
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    Visible = False
  end
  object MainMenu1: TMainMenu
    OwnerDraw = True
    Left = 2
    Top = 69
    object N1: TMenuItem
      Caption = #1047#1072#1082#1086#1085#1095#1080#1090#1100' '#1080#1075#1088#1091
      object N3: TMenuItem
        Caption = #1042#1099#1073#1088#1072#1090#1100' '#1085#1086#1074#1099#1081' '#1087#1072#1079#1079#1083
        OnClick = N3Click
      end
      object N2: TMenuItem
        Caption = #1055#1077#1088#1077#1081#1090#1080' '#1086#1073#1088#1072#1090#1085#1086' '#1074' '#1088#1072#1079#1076#1077#1083
        OnClick = N2Click
      end
      object N5: TMenuItem
        Caption = #1055#1077#1088#1077#1081#1090#1080' '#1085#1072' '#1075#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
        OnClick = N5Click
      end
    end
    object N4: TMenuItem
      Caption = #1056#1072#1079#1084#1077#1088' '#1087#1072#1079#1079#1083#1072
      object N221: TMenuItem
        Caption = '2'#1093'2'
        OnClick = N221Click
      end
      object N441: TMenuItem
        Caption = '4'#1093'4'
        OnClick = N441Click
      end
      object N551: TMenuItem
        Caption = '5'#1093'5'
        OnClick = N551Click
      end
      object N881: TMenuItem
        Caption = '8'#1093'8'
        OnClick = N881Click
      end
      object N1611: TMenuItem
        Caption = '10'#1093'10'
        OnClick = N1611Click
      end
    end
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 2
    Top = 4
  end
end
