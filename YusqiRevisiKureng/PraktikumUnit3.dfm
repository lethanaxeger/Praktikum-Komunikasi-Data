object frmrz: Tfrmrz
  Left = 188
  Top = 116
  Width = 947
  Height = 559
  Caption = 'Pengkodean'
  Color = clBtnShadow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Imgtampil: TImage
    Left = 24
    Top = 16
    Width = 721
    Height = 361
  end
  object Label1: TLabel
    Left = 752
    Top = 128
    Width = 43
    Height = 13
    Caption = 'Sumbu X'
  end
  object Label2: TLabel
    Left = 752
    Top = 192
    Width = 43
    Height = 13
    Caption = 'Sumbu Y'
  end
  object btrz: TButton
    Left = 24
    Top = 400
    Width = 97
    Height = 41
    Caption = 'RZ'
    TabOrder = 0
    OnClick = btrzClick
  end
  object btexit: TButton
    Left = 520
    Top = 392
    Width = 97
    Height = 41
    Caption = 'Exit'
    TabOrder = 1
    OnClick = btexitClick
  end
  object btnrz: TButton
    Left = 144
    Top = 400
    Width = 97
    Height = 41
    Caption = 'NRZ-L'
    TabOrder = 2
    OnClick = btnrzClick
  end
  object btnrzi: TButton
    Left = 256
    Top = 400
    Width = 97
    Height = 41
    Caption = 'NRZ-I'
    TabOrder = 3
    OnClick = btnrziClick
  end
  object btreset: TButton
    Left = 520
    Top = 464
    Width = 97
    Height = 41
    Caption = 'Reset'
    TabOrder = 4
  end
  object btmanc: TButton
    Left = 80
    Top = 464
    Width = 97
    Height = 41
    Caption = 'Manchester'
    TabOrder = 5
    OnClick = btmancClick
  end
  object Edit1: TEdit
    Left = 768
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '010011001'
  end
  object edsumbux: TEdit
    Left = 800
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 7
    Text = '40'
  end
  object edsumbuy: TEdit
    Left = 800
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 8
    Text = '125'
  end
  object btdmanc: TButton
    Left = 224
    Top = 464
    Width = 97
    Height = 41
    Caption = 'D - Manchester'
    TabOrder = 9
    OnClick = btdmancClick
  end
end
