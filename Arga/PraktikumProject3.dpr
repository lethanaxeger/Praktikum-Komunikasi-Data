program PraktikumProject3;

uses
  Forms,
  Arga3 in 'Arga3.pas' {frmrz};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrmrz, frmrz);
  Application.Run;
end.
