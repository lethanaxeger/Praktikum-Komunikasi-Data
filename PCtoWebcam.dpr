program PCtoWebcam;

uses
  Forms,
  KomunikasiPCtoWebcam in 'KomunikasiPCtoWebcam.pas' {Frmcapture};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmcapture, Frmcapture);
  Application.Run;
end.
