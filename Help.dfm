object FormHelp: TFormHelp
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Help'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 176
    Top = 32
    Width = 267
    Height = 32
    Caption = 'Bantuan Aplikasi Cuaca'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 40
    Top = 141
    Width = 129
    Height = 25
    Caption = 'Cara penggunaan'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 40
    Top = 205
    Width = 129
    Height = 25
    Caption = 'Penyelesaian Masalah'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 40
    Top = 269
    Width = 129
    Height = 25
    Caption = 'Github'
    TabOrder = 2
    OnClick = Button3Click
  end
  object RichEdit1: TRichEdit
    Left = 408
    Top = 152
    Width = 185
    Height = 105
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    TabOrder = 3
  end
  object Button4: TButton
    Left = 504
    Top = 263
    Width = 75
    Height = 25
    Caption = 'Tekan Saya'
    TabOrder = 4
    OnClick = Button4Click
  end
end
