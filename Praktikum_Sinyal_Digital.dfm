object frmrz: Tfrmrz
  Left = 432
  Top = 114
  Width = 1089
  Height = 540
  Caption = 'Pengkodean'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object imgtampil: TImage
    Left = 0
    Top = 0
    Width = 1041
    Height = 433
  end
  object Panel1: TPanel
    Left = 0
    Top = 440
    Width = 1041
    Height = 49
    TabOrder = 0
    object btrz: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'RZ'
      TabOrder = 0
      OnClick = BtrzClick
    end
    object btexit: TButton
      Left = 944
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Exit'
      TabOrder = 1
    end
    object btnrzl: TButton
      Left = 120
      Top = 8
      Width = 75
      Height = 25
      Caption = 'NRZ-L'
      TabOrder = 2
      OnClick = btnrzlClick
    end
    object btnrzi: TButton
      Left = 224
      Top = 8
      Width = 75
      Height = 25
      Caption = 'NRZ-I'
      TabOrder = 3
      OnClick = btnrziClick
    end
    object btmanchester: TButton
      Left = 328
      Top = 8
      Width = 97
      Height = 25
      Caption = 'MANCHESTER'
      TabOrder = 4
      OnClick = btmanchesterClick
    end
    object btdmanchester: TButton
      Left = 456
      Top = 8
      Width = 105
      Height = 25
      Caption = 'D-MANCHESTER'
      TabOrder = 5
      OnClick = btdmanchesterClick
    end
    object btami: TButton
      Left = 600
      Top = 8
      Width = 75
      Height = 25
      Caption = 'AMI'
      TabOrder = 6
      OnClick = btamiClick
    end
  end
end
