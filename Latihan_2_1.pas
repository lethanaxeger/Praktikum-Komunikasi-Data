unit Latihan_2_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFrmsinyal = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Edbiner: TEdit;
    Imgsinus: TImage;
    Imgkotak: TImage;
    Panel1: TPanel;
    Btsinus: TButton;
    Btkotak: TButton;
    Label2: TLabel;
    Edsumbux: TEdit;
    Label3: TLabel;
    Edsumbuy: TEdit;
    rba1: TRadioButton;
    rba2: TRadioButton;
    rba4: TRadioButton;
    rbf2: TRadioButton;
    rbf5: TRadioButton;
    rbf10: TRadioButton;
    rbt30: TRadioButton;
    rbt60: TRadioButton;
    rbt100: TRadioButton;
    rbl10: TRadioButton;
    rbl30: TRadioButton;
    rbl50: TRadioButton;
    Amp: TGroupBox;
    Frek: TGroupBox;
    Tinggi: TGroupBox;
    Lebar: TGroupBox;
    procedure BtkotakClick(Sender: TObject);
    procedure BtsinusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmsinyal: TFrmsinyal;

implementation

{$R *.dfm}
procedure sumbu1(ax,ay,b,c:integer);
begin
  Frmsinyal.Imgsinus.Canvas.MoveTo(ax,ay);
  Frmsinyal.Imgsinus.Canvas.LineTo(ax+b,ay);
  Frmsinyal.Imgsinus.Canvas.MoveTo(ax,ay);
  Frmsinyal.Imgsinus.Canvas.LineTo(ax,ay-c);
  Frmsinyal.Imgsinus.Canvas.MoveTo(ax,ay);
  Frmsinyal.Imgsinus.Canvas.LineTo(ax,ay+c);
  Frmsinyal.Imgsinus.Canvas.Pen.Color:=clblue;
  Frmsinyal.Imgsinus.Canvas.MoveTo(ax,ay+110);
  Frmsinyal.Imgsinus.Canvas.LineTo(ax+160,ay+110);
  Frmsinyal.Imgsinus.Canvas.MoveTo(ax+220,ay+110);
  Frmsinyal.Imgsinus.Canvas.LineTo(ax+390,ay+110);
  Frmsinyal.Imgsinus.Canvas.TextOut(ax+170,ay+105,'1 detik');
  Frmsinyal.Imgsinus.Canvas.TextOut(ax,ay-c,'Amplitude (A)');
  Frmsinyal.Imgsinus.Canvas.TextOut(ax+b-15,ay-15,'Time(t)');
  Frmsinyal.Imgsinus.Canvas.TextOut(ax-10,ay-55,'2-');
  Frmsinyal.Imgsinus.Canvas.TextOut(ax-10,ay-107,'4-');
end;

procedure sumbu2(ax,ay,b,c:integer);
begin
  Frmsinyal.Imgkotak.Canvas.MoveTo(ax,ay);
  Frmsinyal.Imgkotak.Canvas.LineTo(ax+b,ay);
  Frmsinyal.Imgkotak.Canvas.MoveTo(ax,ay);
  Frmsinyal.Imgkotak.Canvas.LineTo(ax,ay-c);
  Frmsinyal.Imgkotak.Canvas.MoveTo(ax,ay);
  Frmsinyal.Imgkotak.Canvas.LineTo(ax,ay+c);
  Frmsinyal.Imgkotak.Canvas.TextOut(ax,ay-c,'Amplitude (v)');
  Frmsinyal.Imgkotak.Canvas.TextOut(ax+b-5,ay+5,'Time(s)');
  Frmsinyal.Imgkotak.Canvas.TextOut(ax-15,ay-37,'30-');
  Frmsinyal.Imgkotak.Canvas.TextOut(ax-15,ay-67,'60-');
  Frmsinyal.Imgkotak.Canvas.TextOut(ax-21,ay-107,'100-');
end;

procedure satu(ax,ay,a,b,i:integer);
begin
  Frmsinyal.Imgkotak.Canvas.Pen.Color:=clred;
  Frmsinyal.Imgkotak.Canvas.MoveTo(ax+(i-1)*b,ay-a);
  Frmsinyal.Imgkotak.Canvas.LineTo(ax+b+(i-1)*b,ay-a);
end;
procedure nol(ax,ay,a,b,i:integer);
begin
  Frmsinyal.Imgkotak.Canvas.Pen.Color:=clred;
  Frmsinyal.Imgkotak.Canvas.MoveTo(ax+(i-1)*b,ay);
  Frmsinyal.Imgkotak.Canvas.LineTo(ax+b+(i-1)*b,ay);
end;

procedure tegak(ax,ay,a,b,i:integer);
begin
  Frmsinyal.Imgkotak.Canvas.Pen.Color:=clred;
  Frmsinyal.Imgkotak.Canvas.MoveTo(ax+(i-1)*b,ay);
  Frmsinyal.Imgkotak.Canvas.LineTo(ax+(i-1)*b,ay-a);
end;

procedure resetSinus;
var
  x,y:integer;
begin
  Frmsinyal.Imgsinus.Picture:=nil;
  Frmsinyal.Imgsinus.Refresh;
  x:=strtoint(Frmsinyal.Edsumbux.Text);
  y:=strtoint(Frmsinyal.Edsumbuy.Text);
  sumbu1(20,120,x,y);
  sumbu2(20,120,x,y);
end;

procedure resetKotak;
var
  x,y:integer;
begin
  Frmsinyal.Imgkotak.Picture:=nil;
  Frmsinyal.Imgkotak.Refresh;
  x:=strtoint(Frmsinyal.Edsumbux.Text);
  y:=strtoint(Frmsinyal.Edsumbuy.Text);
  sumbu1(20,120,x,y);
  sumbu2(20,120,x,y);
end;

procedure TFrmsinyal.BtsinusClick(Sender: TObject);
var
  Amp,sx,x,y:integer;
  sy,Frek:real;
begin
  resetSinus;
  if rba1.Checked then Amp:=25; //amplitudo=1 v
  if rba2.Checked then Amp:=50; //amplitudo=2 v
  if rba4.Checked then Amp:=100; //amplitudo=1 v
  if rbf2.Checked then Frek:=10; //amplitudo=4 v
  if rbf5.Checked then Frek:=4; //amplitudo=5 v
  if rbf10.Checked then Frek:=2; //amplitudo=10 v
    x:=strtoint(Frmsinyal.Edsumbux.Text);
    y:=strtoint(Frmsinyal.Edsumbuy.Text);
    sumbu1(20,120,x,y);
    for sx:=1 to 395 do
      begin
      sy:=sin(sx/pi/Frek)*Amp;
      Frmsinyal.Imgsinus.Canvas.pixels[sx+20,120-round(sy)]:=clred;
    end;
  end;


procedure TFrmsinyal.BtkotakClick(Sender: TObject);
var
  i,x,y,Tinggi,Lebar:integer;
  biner:string;
  tnd : integer;
begin
  resetKotak;
  if rbl10.checked then Lebar:=10;
  if rbl30.checked then Lebar:=30;
  if rbl50.checked then Lebar:=50;
  if rbt30.checked then Tinggi:=30;
  if rbt60.checked then Tinggi:=60;
  if rbt100.checked then Tinggi:=100;
  biner:=Edbiner.Text;
  x:=strtoint(Frmsinyal.Edsumbux.Text);
  y:=strtoint(Frmsinyal.Edsumbuy.Text);
  sumbu2(20,120,x,y);
  tnd:=0;
  for i:=1 to 16 do
    if biner[i]='1' then
      if tnd=0 then
        begin
        tegak(20,120,Tinggi,Lebar,i);
        satu(20,120,Tinggi,Lebar,i);
        tnd:=1; end
      else satu(20,120,Tinggi,Lebar,i)
      else if tnd=1 then
        begin
        tegak(20,120,Tinggi,Lebar,i);
        nol(20,120,Tinggi,Lebar,i);
        tnd:=0; end
      else nol(20,120,Tinggi,Lebar,i);
    end;
end.
