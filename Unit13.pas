unit Unit13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm13 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation
uses unit14;

{$R *.dfm}

procedure TForm13.FormCreate(Sender: TObject);
begin
form13.Cursor:=1;
end;

procedure TForm13.Image2Click(Sender: TObject);
begin
planetsworld.emotions.itemindex:=0;
planetsworld.emotionspic.Picture.LoadFromFile(unit14.path1+'переодевалка планеты\эмоции\1.png');
unit14.clickeyes:=1;
planetsworld.eyes.Picture.LoadFromFile(path1+'\переодевалка планеты\eyes\1.png');
planetsworld.eyes.Visible:=true;
form13.Close;
end;

procedure TForm13.Image2MouseEnter(Sender: TObject);
begin
form13.Cursor:=2;
end;

procedure TForm13.Image2MouseLeave(Sender: TObject);
begin
form13.Cursor:=1;
end;

procedure TForm13.Image3Click(Sender: TObject);
begin
form13.Close;
end;

end.
