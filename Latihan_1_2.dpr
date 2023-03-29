program Latihan_1_2;

uses
  Forms,
  Latihan_1_1 in 'Latihan_1_1.pas' {Frmsinyal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmsinyal, Frmsinyal);
  Application.Run;
end.
