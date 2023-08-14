unit wheaterApp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, IdHTTP, System.JSON, Vcl.ComCtrls, Vcl.Imaging.jpeg, Help, ShellAPI;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Image1: TImage;
    EdKota: TEdit;
    EdNegara: TEdit;
    EdSuhu: TEdit;
    EdCuaca: TEdit;
    EdKelembaban: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    REpeta: TRichEdit;
    backroundimage: TImage;
    Shape1: TShape;
    Shape2: TShape;
    Label8: TLabel;
    Image2: TImage;
    Button1: TButton;
    Label9: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  URL: string;
begin
  URL := REPeta.Text;
  ShellExecute(0, 'open', PChar(URL) , nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.Image1Click(Sender: TObject);
var
  HTTPClient: TIdHTTP;
  ResponseJSON: string;
  APIURL: string;
  JSONValue: TJSONValue;
  JSONObject: TJSONObject;
  lat: string;
  lon: string;
begin
  HTTPClient := TIdHTTP.Create(nil);
  try
    APIURL := 'http://api.openweathermap.org/data/2.5/weather?q=' + Edit1.Text +
      '&units=metric&APPID=191af5c72131d8aef8b5d397b96020af';

    ResponseJSON := HTTPClient.Get(APIURL);
    JSONValue := TJSONObject.ParseJSONValue(ResponseJSON);
    try
      if JSONValue <> nil then
      begin
        JSONObject := JSONValue as TJSONObject;

        EdKota.Text := JSONObject.GetValue<string>('name');
        EdNegara.Text := JSONObject.GetValue<string>('sys.country');
        EdSuhu.Text := FloatToStr(JSONObject.GetValue<TJSONNumber>('main.temp').AsDouble) + '°C';
        EdCuaca.Text:= JSONObject.GetValue<TJSONArray>('weather').Items[0].GetValue<string>('description');
        EdKelembaban.Text:= JSONObject.GetValue<string>('main.humidity') + '%';
        lat := JSONObject.GetValue<string>('coord.lat');
        lon := JSONObject.GetValue<string>('coord.lon');
        REPeta.Text:= 'https://maps.google.com/?q=' + lat + ',' + lon;
        //Label8.Caption := Repeta.Text;
        button1.Visible := True;
      end
      else
      begin
        ShowMessage('Tidak dapat mengambil data cuaca.');
      end;
    finally
      JSONValue.Free;
    end;
  finally
    HTTPClient.Free;
  end;
end;


procedure TForm1.Image2Click(Sender: TObject);
var
  FormHelp: TFormHelp; // Ganti dengan nama form help yang sesuai
begin
  FormHelp := TFormHelp.Create(Self); // Buat instance form help
  try
    FormHelp.ShowModal; // Tampilkan form help sebagai modal (blocking)
  finally
    FormHelp.Free; // Bebaskan memori setelah form help ditutup
  end;
end;



end.
