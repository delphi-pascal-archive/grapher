unit Forum;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Unit1, ComCtrls;

type
  TForm2 = class(TForm)
    Button17: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button30: TButton;
    Button31: TButton;
    Button33: TButton;
    Button34: TButton;
    Button35: TButton;
    Button36: TButton;
    Button37: TButton;
    frm: TEdit;
    Button38: TButton;
    Button39: TButton;
    Button40: TButton;
    Button41: TButton;
    Button42: TButton;
    Button43: TButton;
    Button44: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button16: TButton;
    Button19: TButton;
    Button15: TButton;
    StatusBar1: TStatusBar;
    procedure Button37Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button44Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure BackSpace(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure frmKeyPress(Sender: TObject; var Key: Char);
    procedure frmChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation


{$R *.DFM}

procedure TForm2.Button37Click(Sender: TObject);
begin
  frm.Text:='y = ';
end;

procedure TForm2.Button30Click(Sender: TObject);
begin
  frm.Text:=frm.Text+'0';
end;

procedure TForm2.Button29Click(Sender: TObject);
begin
  frm.Text:=frm.Text+'1';
end;

procedure TForm2.Button28Click(Sender: TObject);
begin
    frm.Text:=frm.Text+'2';
end;

procedure TForm2.Button27Click(Sender: TObject);
begin
  frm.Text:=frm.Text+'3';
end;

procedure TForm2.Button26Click(Sender: TObject);
begin
  frm.Text:=frm.Text+'4';
end;

procedure TForm2.Button38Click(Sender: TObject);
begin
  frm.Text:=frm.Text+'5';
end;

procedure TForm2.Button40Click(Sender: TObject);
begin
  frm.Text:=frm.Text+'6';
end;

procedure TForm2.Button39Click(Sender: TObject);
begin
  frm.Text:=frm.Text+'7';
end;

procedure TForm2.Button41Click(Sender: TObject);
begin
  frm.Text:=frm.Text+'8';
end;

procedure TForm2.Button42Click(Sender: TObject);
begin
  frm.Text:=frm.Text+'9';
end;

procedure TForm2.Button36Click(Sender: TObject);
begin
  frm.Text:=frm.Text+'-';
end;

procedure TForm2.Button35Click(Sender: TObject);
begin
  frm.Text:=frm.Text+'+';
end;

procedure TForm2.Button34Click(Sender: TObject);
begin
  frm.Text:=frm.Text+'*';
end;

procedure TForm2.Button33Click(Sender: TObject);
begin
  frm.Text:=frm.Text+'/';
end;

procedure TForm2.Button31Click(Sender: TObject);
begin
  frm.Text:=frm.Text+'x';
end;

procedure TForm2.Button25Click(Sender: TObject);
begin
  frm.Text:=frm.Text+'cos(';
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  frm.Text:=frm.Text+'(';
end;

procedure TForm2.Button44Click(Sender: TObject);
begin
  frm.Text:=frm.Text+'lg10(';
end;

procedure TForm2.Button24Click(Sender: TObject);
begin
  frm.Text:=frm.Text+'tg(';
end;

procedure TForm2.Button17Click(Sender: TObject);
begin
  frm.Text:=frm.Text+'sqrt(';
end;

procedure TForm2.BackSpace(Sender: TObject);
var
  temp,sct: string;
  Lpos: integer;
begin
  temp:=frm.Text;
  Lpos := frm.SelStart;
  if Lpos = 0 then Lpos:=Length(temp);
  sct:=Copy(temp,Length(temp)-3,4);
  if sct <> 'y = ' then
  begin
    Delete(temp,Lpos,1);
    frm.Text:=temp;
    frm.SelStart:=Lpos-1;
    if Copy(temp,0,4)<>'y = ' then
    frm.SelStart:=Lpos;
  end;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  frm.Text:=frm.Text+'ctg('
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
 frm.Text:=frm.Text+')';
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  Button2Click(Sender);
  Form2.Close;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  if frm.Text = 'y = ' then
  begin
    Form1.formula:='';
    Form1.StatusBar1.Panels.Items[0].Text:='Формула: нет формулы'
  end
  else
  begin
    Form1.formula:=frm.Text;
    Form1.StatusBar1.Panels.Items[0].Text:='Формула: '+frm.Text;
  end;
end;

procedure TForm2.Button43Click(Sender: TObject);
begin
  frm.Text:=frm.Text+'sin(';
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
 frm.Text:=frm.Text+'|';
end;

procedure TForm2.Button8Click(Sender: TObject);
begin
 frm.Text:=frm.Text+'pi';
end;

procedure TForm2.Button9Click(Sender: TObject);
begin
 frm.Text:=frm.Text+',';
end;

procedure TForm2.Button14Click(Sender: TObject);
begin
 frm.Text:=frm.Text+'ln(';
end;

procedure TForm2.Button13Click(Sender: TObject);
begin
 frm.Text:=frm.Text+'e(';
end;

procedure TForm2.Button16Click(Sender: TObject);
begin
 frm.Text:=frm.Text+'^';
end;

procedure TForm2.Button12Click(Sender: TObject);
begin
 frm.Text:=frm.Text+'arcsin(';
end;

procedure TForm2.Button10Click(Sender: TObject);
begin
 frm.Text:=frm.Text+'arctg(';
end;

procedure TForm2.Button11Click(Sender: TObject);
begin
 frm.Text:=frm.Text+'arccos(';
end;

procedure TForm2.Button15Click(Sender: TObject);
begin
 frm.Text:=frm.Text+'lg2(';
end;

procedure TForm2.Button19Click(Sender: TObject);
begin
 Form2.Close;
end;

procedure TForm2.frmKeyPress(Sender: TObject; var Key: Char);
var
  symbols: set of char;
begin
  if frm.SelStart < 4 then
  frm.SelStart:=4;
  if ord(Key) = 8 then  begin   //Backspace key
    BackSpace(Sender);
    Key:=#0;
    exit;
  end;
  symbols := ['0','1','2','3','4','5','6','7','8','9',
              'c','s','o','i','l','g','t','e','n','(',
              ')','r','x','p',',','a','+','-','|','*',
              'q','^','/'];
  if  not (Key in symbols) then
  Key:=#0;
end;

procedure TForm2.frmChange(Sender: TObject);
var
  temp: String;
  str: String;
  n: integer;
begin
  temp:= frm.Text;
  if Length(temp)<4 then
  begin
  frm.Text:='';
  frm.Text:='y = ';
  end
  else
  begin
  str:=Copy(temp,0,4);
  if str<>'y = ' then
  begin
    temp[1]:='y';
    temp[2]:=' ';
    temp[3]:='=';
    temp[4]:=' ';
    n:=frm.SelStart;
    frm.Text:=temp;
    frm.SelStart:=n;
  end;
  end;
end;

end.
