program Latihan_3_3;

uses
  Forms,
  Latihan_3_1 in 'Latihan_3_1.pas' {Frmpctopc};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmpctopc, Frmpctopc);
  Application.Run;
end.
