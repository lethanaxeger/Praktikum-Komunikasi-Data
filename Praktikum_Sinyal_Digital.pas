unit Praktikum_Sinyal_Digital;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tfrmrz = class(TForm)
    btrz: TButton;
    imgtampil: TImage;
    Panel1: TPanel;
    btexit: TButton;
    procedure btrzClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrz: Tfrmrz;

implementation

{$R *.dfm}

Procedure sumbu(ax,ay,b,c:integer);
Begin
frmrz.imgtampil.Canvas.MoveTo(ax,ay);
frmrz.imgtampil.Canvas.LineTo(ax+b,ay);
frmrz.imgtampil.Canvas.MoveTo(ax,ay);
frmrz.imgtampil.Canvas.LineTo(ax,ay-c);
frmrz.imgtampil.Canvas.MoveTo(ax,ay);
frmrz.imgtampil.Canvas.LineTo(ax,ay+c);
end;

procedure rz_1(x,y,i:integer);
begin
x:=60*(i-1);
y:=60*(i-1);
frmrz.imgtampil.Canvas.Pen.Color:=clRed;
frmrz.imgtampil.Canvas.MoveTo(40+x,150);
frmrz.imgtampil.Canvas.LineTo(40+x,100);
frmrz.imgtampil.Canvas.MoveTo(40+x,100);
frmrz.imgtampil.Canvas.LineTo(70+y,100);
frmrz.imgtampil.Canvas.MoveTo(70+y,100);
frmrz.imgtampil.Canvas.lineto(70+y,150);
frmrz.imgtampil.Canvas.MoveTo(70+y,150);
frmrz.imgtampil.Canvas.LineTo(100+y,150);
frmrz.imgtampil.Canvas.Pen.Color:=clBlack;
end;

procedure rz_0(x,y,i:integer);
begin
x:=60*(i-1);
y:=60*(i-1);
frmrz.imgtampil.Canvas.Pen.Color:=clRed;
frmrz.imgtampil.Canvas.MoveTo(40+x,150);
frmrz.imgtampil.Canvas.LineTo(40+x,200);
frmrz.imgtampil.Canvas.MoveTo(40+x,200);
frmrz.imgtampil.Canvas.LineTo(70+y,200);
frmrz.imgtampil.Canvas.MoveTo(70+y,200);
frmrz.imgtampil.Canvas.lineto(70+y,150);
frmrz.imgtampil.Canvas.MoveTo(70+y,150);
frmrz.imgtampil.Canvas.LineTo(100+y,150);
frmrz.imgtampil.Canvas.Pen.Color:=clBlack;
end;

procedure Tfrmrz.btrzClick(Sender: TObject);
var sx,x,y,b,c,i:integer;
  data:string;
begin
  sumbu(30,150,b,c);
    for sx:=1 to 395 do
    begin
      data:='10101010';
      for i:=1 to 8 do begin
        if data[i]='1' then begin
          rz_1(x,y,i);
            end else if data[i]='0' then begin
              rz_0(x,y,i);
              end;
            y:=y+60;
            x:=x+60;
            end;
          x:=0;
          y:=0;
          end;
      end;
end.
