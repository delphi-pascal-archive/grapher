program Grapher;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Forum in 'Forum.pas' {Form2};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'VKSoft Grapher 1.1';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
