object Frmsinyal: TFrmsinyal
  Left = 219
  Top = 116
  Width = 1044
  Height = 540
  Caption = 'Gelombang Sinus'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Imgtampil: TImage
    Left = 8
    Top = -8
    Width = 737
    Height = 345
  end
  object Tpanel: TPanel
    Left = 0
    Top = 352
    Width = 1033
    Height = 153
    TabOrder = 0
    object Label1: TLabel
      Left = 640
      Top = 48
      Width = 7
      Height = 13
      Caption = 'X'
    end
    object Label2: TLabel
      Left = 640
      Top = 88
      Width = 7
      Height = 13
      Caption = 'Y'
    end
    object Btproses: TBitBtn
      Left = 104
      Top = 56
      Width = 75
      Height = 25
      Caption = '&Proses'
      TabOrder = 0
      OnClick = BtprosesClick
    end
    object Edsumbux: TEdit
      Left = 672
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '400'
    end
    object Edsumbuy: TEdit
      Left = 672
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 2
      Text = '125'
    end
  end
  object Mmhasil: TMemo
    Left = 744
    Top = 0
    Width = 289
    Height = 345
    TabOrder = 1
  end
end
