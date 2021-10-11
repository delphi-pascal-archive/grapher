unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ComCtrls, Menus, ToolWin, ImgList, Buttons,
  ExtCtrls, StdCtrls, ExtDlgs, Recognitation;

{$R XPManifest.res}

type
  TForm1 = class(TForm)
    CoolBar1: TCoolBar;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ImageList1: TImageList;
    ToolBar3: TToolBar;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    C1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    ToolButton2: TToolButton;
    StatusBar1: TStatusBar;
    Graph: TPaintBox;
    ToolButton4: TToolButton;
    N10: TMenuItem;
    spd: TSavePictureDialog;
    ToolButton5: TToolButton;
    Edit1: TEdit;
    UpDown1: TUpDown;
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CleanGraph(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure ToBitMap;
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    formula: String;
  end;

var
  Form1: TForm1;
  bmp: TBitmap;
  zoom: integer;

const
  APP_NAME = 'VKSSoft - Grapher 1.1';

implementation

uses Forum;

{$R *.DFM}

procedure TForm1.FormPaint(Sender: TObject);
begin
  BitBlt(Graph.Canvas.Handle,0,0,bmp.Width,bmp.Height,
         bmp.Canvas.Handle,0,0,SRCCopy);
end;

procedure SeeEditing(edit: TEdit);
begin
   //----
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  bmp:=TBitmap.Create;
  bmp.Height:=Graph.Height;
  bmp.Width:=Graph.Width;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  bmp.Free;
end;

procedure TForm1.CleanGraph(Sender: TObject);
begin
  bmp.Free;
  bmp:=TBitmap.Create;
  bmp.Height:=Graph.Height;
  bmp.Width:=Graph.Width;
end;

procedure TForm1.ToolButton15Click(Sender: TObject);
begin
  CleanGraph(Sender);
  Graph.Visible:=false;
  Graph.Visible:=true;
end;

procedure TForm1.ToBitMap;
begin
  BitBlt(bmp.Canvas.Handle,0,0,bmp.Width,bmp.Height,
         Graph.Canvas.Handle,0,0,SRCCopy);
end;

procedure TForm1.ToolButton11Click(Sender: TObject);
begin
  if formula <> '' then
    Form2.frm.Text:=formula
  else
    Form2.frm.Text:='y = ';
  Form2.Show;
end;

procedure TForm1.ToolButton4Click(Sender: TObject);
var
   dx: integer;
   temp,temp2: integer;
   gx,gy,gy2,gx2: integer;
begin

with Graph.Canvas do
begin
  zoom:=StrToInt(Edit1.Text);
  gx:=Graph.Width;
  gy:=Graph.Height;
  Pen.Color := RGB(0,0,0);
  gy2:=gy div 2;
  gx2:=gx div 2;
  MoveTo(0,gy2);
  LineTo(gx,gy2);
  LineTo(gx - 4,(gy2 - 4));
  MoveTo(gx,gy2);
  LineTo(gx - 4,gy2+4);
  temp:=gx div zoom;
  temp2:=gy div zoom;
  if zoom > 2 then
  for dx:=0 to temp -1 do
  begin
    MoveTo(gx2+zoom*dx,gy2-2);
    LineTo(gx2+zoom*dx,gy2+2);
    MoveTo(gx2-zoom*dx,gy2-2);
    LineTo(gx2-zoom*dx,gy2+2);
  end;

  MoveTo(gx2,0);
  LineTo(gx2,gy);
  MoveTo(gx2-4,4);
  LineTo(gx2,0);
  LineTo(gx2+4,4);
  if zoom > 2 then
  for dx:=0 to temp2 -1 do
  begin
    MoveTo(gx2+2,gy2+zoom*dx);
    LineTo(gx2-2,gy2+zoom*dx);
    MoveTo(gx2-2,gy2-zoom*dx);
    LineTo(gx2+2,gy2-zoom*dx);
  end;
  SetBkMode(Graph.Canvas.Handle, TRANSPARENT);
  Font.Size := 8;
  Graph.Canvas.Font.Color:=$B01010;
  TextOut(gx2-10, gy2+2, '0');
  TextOut(gx2+4,0,'y');
  TextOut(gx-10,gy2+2,'x');
  end;
  ToBitMap;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  PostQuitMessage(0);
end;

procedure TForm1.ToolButton14Click(Sender: TObject);
var
   dx: integer;
   temp: integer;
   gx,gy,gx2,gy2: integer;
begin
with Graph.Canvas do
begin
  zoom:=StrToInt(Edit1.Text);
  gx:=Graph.Width;
  gy:=Graph.Height;
  gy2:=gy div 2;
  gx2:=gx div 2;
  Pen.Color := RGB(180,180,255);
  temp:=gx div zoom;
  if zoom > 2 then
  for dx:=0 to temp -1 do
  begin
    MoveTo(gx2+zoom*dx,0);
    LineTo(gx2+zoom*dx,gy);
    MoveTo(gx2-zoom*dx,0);
    LineTo(gx2-zoom*dx,gy);
  end;
  if zoom > 2 then
  temp:=gy div zoom;
  for dx:=0 to temp -1 do
  begin
    MoveTo(0,gy2-zoom*dx);
    LineTo(gx,gy2-zoom*dx);
    MoveTo(0,gy2+zoom*dx);
    LineTo(gx,gy2+zoom*dx);
  end;
  end;
  ToBitMap;
end;

procedure TForm1.ToolButton17Click(Sender: TObject);
var
 fn: String;
begin
  if spd.Execute then
  begin
    fn:=spd.FileName;
    if ExtractFileExt(fn) <> '.bmp' then
    fn:=fn+'.bmp';
    bmp.SaveToFile(fn);
  end;
end;

procedure TForm1.ToolButton12Click(Sender: TObject);
const
  step =pi/100;  //It is the step for discretization graphic
var
  i: integer;
  Num: extended;
  s: String;
  dx:real;
  dxp: integer;
  gx2,gy2: integer;
  doit: Boolean;
  x,y: integer;
begin
  zoom:=StrToInt(Edit1.Text);
  s:=Copy(formula,5,Length(formula)-4);
  if s = '' then
  begin
    MessageBox(Form1.Handle,'Сперва необходимо ввести формулу!',APP_NAME,0);
    Form2.Show;
    exit;
  end;
  preparation(s, ['x']);
  gx2:= Graph.Width div 2;
  gy2:= Graph.Height div 2;
  dx:=-((gx2+zoom) div zoom);
  dxp:=Round(2*((gx2+zoom) div zoom)/step);
  Graph.Canvas.MoveTo(0,0);
  doit:=false;
  Graph.Canvas.Pen.Color := RGB(0,0,0);
  for i := 0 to dxp do
  begin
    dx:=dx+step;
    if recogn(ChangeVar(s, 'x', dx), Num) then
    begin
      x:=Round(dx*zoom+gx2);
      y:=gy2-Round(Num*zoom);
      if (y<-gx2*2) or  (y>gy2*2) then
       doit:=false;
        if doit then
        Graph.Canvas.LineTo(x,y);
        doit:=true;
        Graph.Canvas.MoveTo(x,y);
    end
    else
    doit:=false;
  end;
  Graph.Canvas.MoveTo(0,0);
  ToBitMap;
end;


procedure TForm1.Edit1Change(Sender: TObject);
begin
 if Edit1.Text = '' then exit;
 if StrToInt(Edit1.Text) > 200 then
 begin
   MessageBox(0,'Масштаб не может быть больше 200',APP_NAME,0);
   Edit1.Text:='200';
 end;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
var
  symbols: set of char;
begin
  if ord(Key) = 8 then  exit;
  symbols := ['0','1','2','3','4','5','6','7','8','9'];
  if not (Key in symbols) then
  key:=#0;
end;

procedure TForm1.N4Click(Sender: TObject);
var
  s: string;
begin
  s:=APP_NAME+'- это простая программа для черчения 2-х мерных графиков'+chr(13)+
     'Имеет функцию сохранения в виде bmp картинки, зуммирование, проведения'+chr(13)+
     'координатной сетки и некоторые другие.'+chr(13)+
     'vks100@mail.ru (c) 2004';
  MessageBox(Form1.Handle,PChar(s),APP_NAME,MB_ICONINFORMATION);
end;

end.
