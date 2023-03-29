program Latihan_2_2;

uses
  Forms,
  Latihan_2_1 in 'Latihan_2_1.pas' {Frmsinyal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmsinyal, Frmsinyal);
  Application.Run;
end.
