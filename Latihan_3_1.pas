unit Latihan_3_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CPort;

type
  TFrmpctopc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Mengirim: TMemo;
    Menerima: TMemo;
    Comserial: TComPort;
    GroupBox1: TGroupBox;
    Btsend: TButton;
    Btsetup: TButton;
    Btexit: TButton;
    Edinputteks: TEdit;
    procedure BtsendClick(Sender: TObject);
    procedure BtsetupClick(Sender: TObject);
    procedure BtexitClick(Sender: TObject);
    procedure ComserialRxChar(Sender: TObject; Count: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmpctopc: TFrmpctopc;

implementation

{$R *.dfm}

procedure TFrmpctopc.ComserialRxChar(Sender: TObject; Count: Integer);
var
str:string;
begin
Comserial.ReadStr(Str, Count);
Menerima.Text := Menerima.Text + str;
Menerima.Lines.Add('');
end;

procedure TFrmpctopc.FormCreate(Sender: TObject);
begin
Comserial.Open;
end;

procedure TFrmpctopc.BtsendClick(Sender: TObject);
var
i,n:integer;
str:string;
begin
Str := Edinputteks.Text;
Comserial.WriteStr(Str);
Mengirim.Lines.Add('Saya :' + Edinputteks.Text);
end;

procedure TFrmpctopc.BtsetupClick(Sender: TObject);
begin
Comserial.ShowSetupDialog;
end;

procedure TFrmpctopc.BtexitClick(Sender: TObject);
begin
Comserial.close; //menutup port com
application.terminate; //keluar dari program
end;

end.
