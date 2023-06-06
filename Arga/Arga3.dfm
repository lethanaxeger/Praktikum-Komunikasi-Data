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
    Left = 528
    Top = 432
    Width = 7
    Height = 13
    Caption = 'X'
  end
  object Label2: TLabel
    Left = 528
    Top = 464
    Width = 7
    Height = 13
    Caption = 'Y'
  end
  object btrz: TButton
    Left = 64
    Top = 440
    Width = 113
    Height = 33
    Caption = 'RZ'
    TabOrder = 0
    OnClick = btrzClick
  end
  object btexit: TButton
    Left = 352
    Top = 440
    Width = 105
    Height = 33
    Caption = 'Exit'
    TabOrder = 1
    OnClick = btexitClick
  end
  object btnrz: TButton
    Left = 64
    Top = 400
    Width = 113
    Height = 33
    Caption = 'NRZ-L'
    TabOrder = 2
    OnClick = btnrzClick
  end
  object btreset: TButton
    Left = 352
    Top = 400
    Width = 105
    Height = 33
    Caption = 'Reset'
    TabOrder = 3
  end
  object btmanc: TButton
    Left = 200
    Top = 400
    Width = 113
    Height = 33
    Caption = 'Manchester'
    TabOrder = 4
    OnClick = btmancClick
  end
  object Edit1: TEdit
    Left = 504
    Top = 392
    Width = 161
    Height = 21
    TabOrder = 5
    Text = '00010100'
  end
  object edsumbux: TEdit
    Left = 560
    Top = 424
    Width = 105
    Height = 25
    TabOrder = 6
    Text = '40'
  end
  object edsumbuy: TEdit
    Left = 560
    Top = 464
    Width = 105
    Height = 25
    TabOrder = 7
    Text = '125'
  end
  object btdmanc: TButton
    Left = 200
    Top = 440
    Width = 113
    Height = 33
    Caption = 'D - Manchester'
    TabOrder = 8
    OnClick = btdmancClick
  end
end
