unit Latihan_1_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFrmsinyal = class(TForm)
    Mmhasil: TMemo;
    Imgtampil: TImage;
    Btproses: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Edsumbux: TEdit;
    Edsumbuy: TEdit;
    Tpanel: TPanel;
    procedure BtprosesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmsinyal: TFrmsinyal;

implementation

{$R *.dfm}
Procedure sumbu (ax,ay,b,c:integer);
Begin
Frmsinyal.Imgtampil.Canvas.MoveTo(ax,ay);
Frmsinyal.Imgtampil.Canvas.LineTo(ax+b,ay);
Frmsinyal.Imgtampil.Canvas.MoveTo(ax,ay);
Frmsinyal.Imgtampil.Canvas.LineTo(ax,ay-c);
Frmsinyal.Imgtampil.Canvas.MoveTo(ax,ay);
Frmsinyal.Imgtampil.Canvas.LineTo(ax,ay+c);
end;

Procedure TFrmsinyal.BtprosesClick(Sender: TObject);
var
sx,x,y:integer;
sy : real;
begin
  x:= strtoint(Frmsinyal.Edsumbux.Text);
  y:= strtoint(Frmsinyal.Edsumbuy.Text);
  sumbu(40,150,x,y);
  for sx:= 1 to 250 do
    begin
      sy:=sin(sx/pi/3)*60;
          Frmsinyal.Imgtampil.Canvas.Pixels[sx+40,150-round(sy)]:=clred;
          Frmsinyal.Mmhasil.Lines.Add('x='+inttostr(sx)+''+formatfloat ('#.###',(sy)));
      end;
end;

end.
