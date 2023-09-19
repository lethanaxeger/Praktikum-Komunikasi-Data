object Frmcapture: TFrmcapture
  Left = 324
  Top = 205
  Width = 1043
  Height = 409
  Caption = 'Capture Gambar'
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
    Left = 312
    Top = 0
    Width = 305
    Height = 281
    Proportional = True
  end
  object ImgSave: TImage
    Left = 616
    Top = 0
    Width = 313
    Height = 281
    Proportional = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 280
    Width = 929
    Height = 73
    TabOrder = 0
    object Btexit: TButton
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Exit'
      TabOrder = 0
      OnClick = BtexitClick
    end
    object Btcapture: TButton
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Capture'
      TabOrder = 1
      OnClick = BtcaptureClick
    end
    object Btperangkat: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'CariPerangkat'
      TabOrder = 2
      OnClick = BtperangkatClick
    end
    object Cbperangkat: TComboBox
      Left = 8
      Top = 44
      Width = 233
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      Text = 'CariPerangkat'
      OnClick = CbperangkatClick
    end
  end
  object VideoWindow1: TVideoWindow
    Left = 0
    Top = 0
    Width = 313
    Height = 281
    FilterGraph = FilterGraph1
    VMROptions.Mode = vmrWindowed
    Color = clBlack
  end
  object SampleGrabber1: TSampleGrabber
    FilterGraph = FilterGraph1
    MediaType.data = {
      7669647300001000800000AA00389B717DEB36E44F52CE119F530020AF0BA770
      FFFFFFFF0000000001000000809F580556C3CE11BF0100AA0055595A00000000
      0000000000000000}
    Left = 360
    Top = 288
  end
  object Filter1: TFilter
    Tag = 1
    BaseFilter.data = {00000000}
    FilterGraph = FilterGraph1
    Left = 304
    Top = 288
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 416
    Top = 288
  end
  object FilterGraph1: TFilterGraph
    Mode = gmCapture
    GraphEdit = False
    Left = 264
    Top = 288
  end
  object SaveDialog1: TSaveDialog
    Left = 464
    Top = 288
  end
end
