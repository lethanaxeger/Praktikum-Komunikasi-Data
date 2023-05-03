program Praktikum_2;

uses
  Forms,
  Praktikum_Sinyal_Digital in 'Praktikum_Sinyal_Digital.pas' {frmrz};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrmrz, frmrz);
  Application.Run;
end.
