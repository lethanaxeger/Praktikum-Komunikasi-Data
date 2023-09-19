unit KomunikasiPCtoWebcam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DSPack, Spin, jpeg, DirectShow9, DSUtil;

type
  TFrmcapture = class(TForm)
    Btperangkat: TButton;
    Btcapture: TButton;
    Btexit: TButton;
    Imgtampil: TImage;
    ImgSave: TImage;
    Panel1: TPanel;
    Cbperangkat: TComboBox;
    VideoWindow1: TVideoWindow;
    SampleGrabber1: TSampleGrabber;
    Filter1: TFilter;
    Timer1: TTimer;
    FilterGraph1: TFilterGraph;
    SaveDialog1: TSaveDialog;
    procedure BtperangkatClick(Sender: TObject);
    //procedure CbperangkatSelect(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BtcaptureClick(Sender: TObject);
    procedure CbperangkatClick(Sender: TObject);
    procedure BtexitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmcapture: TFrmcapture;
  CapEnum: TSysDevEnum;

implementation

{$R *.dfm}

procedure TFrmcapture.BtperangkatClick(Sender: TObject);
var
i:integer;
begin
  CapEnum:=TSysDevEnum.Create(CLSID_VideoInputDeviceCategory);
  for i := 0 to CapEnum.CountFilters -1 do
  begin
    cbperangkat.Items.Add(CapEnum.Filters[i].FriendlyName);
  end;
end;

procedure TFrmcapture.CbperangkatClick(Sender: TObject);
begin
  FilterGraph1.ClearGraph;
  FilterGraph1.Active:=false;
  Filter1.BaseFilter.Moniker:=CapEnum.GetMoniker(Cbperangkat.ItemIndex);
  FilterGraph1.Active:=True;
  with FilterGraph1 as ICaptureGraphBuilder2
  do Renderstream(@PIN_CATEGORY_PREVIEW, nil, Filter1 as IBaseFilter, SampleGrabber1 as IBaseFilter,
  VideoWindow1 as IBaseFilter);
  FilterGraph1.Play;
end;
  
procedure TFrmcapture.Timer1Timer(Sender: TObject);
var
waktu:string;
begin
TimeSeparator := '_';
waktu := TimeToStr(time);
ImgSave.Picture.SaveToFile('C:\Users\Neovni_LP\Documents\GitHub\Praktikum-Komunikasi-Data\Cao\'+waktu+'.bmp');
timer1.Enabled:=False;
end;

procedure TFrmcapture.BtcaptureClick(Sender: TObject);
begin
samplegrabber1.GetBitmap(Imgtampil.Picture.Bitmap);
imgsave.Picture := imgtampil.Picture;
timer1.Enabled := true;
end;

procedure TFrmcapture.BtexitClick(Sender: TObject);
begin
  close;
end;

end.
