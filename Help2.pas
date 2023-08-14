unit Help2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.ComCtrls, Vcl.ToolWin;

type
  TFormHelp2 = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    ScrollBox1: TScrollBox;
    ToolBar1: TToolBar;
    Image2: TImage;
    Label3: TLabel;
    Image3: TImage;
    Label4: TLabel;
    Image4: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHelp2: TFormHelp2;

implementation

{$R *.dfm}

end.
