program XwheaterApp;

uses
  Vcl.Forms,
  wheaterApp in 'wheaterApp.pas' {Form1},
  Help in 'Help.pas' {FormHelp},
  Help2 in 'Help2.pas' {FormHelp2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormHelp, FormHelp);
  Application.CreateForm(TFormHelp2, FormHelp2);
  Application.Run;
end.
