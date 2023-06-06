program PraktikumProject3;

uses
  Forms,
  PraktikumUnit3 in 'PraktikumUnit3.pas' {frmrz};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrmrz, frmrz);
  Application.Run;
end.
