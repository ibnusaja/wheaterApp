unit Help;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, ShellAPI, Help2;

type
  TFormHelp = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    RichEdit1: TRichEdit;
    Button4: TButton;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHelp: TFormHelp;

implementation

{$R *.dfm}



procedure TFormHelp.Button1Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'https://youtube.com/@newbieberkarya6442', nil, nil, SW_SHOWNORMAL);
end;

procedure TFormHelp.Button2Click(Sender: TObject);
var
  FormHelp2: TFormHelp2; // Ganti dengan nama form help yang sesuai
begin
  FormHelp2 := TFormHelp2.Create(Self); // Buat instance form help
  try
    FormHelp2.ShowModal; // Tampilkan form help sebagai modal (blocking)
  finally
    FormHelp2.Free; // Bebaskan memori setelah form help ditutup
  end;

end;

procedure TFormHelp.Button4Click(Sender: TObject);
begin
  RichEdit1.Text:='---';
  RichEdit1.Lines.Add('Tugas Ini dibuat untuk melngkapi tugas besar UTS IMK.');
  RichEdit1.Lines.Add('---------');
  RichEdit1.Lines.Add('Sekian dari saya');
  RichEdit1.Lines.Add('Nama : Ibnuddin Lasawali');
  RichEdit1.Lines.Add('Nim : F55119092');
end;

end.
