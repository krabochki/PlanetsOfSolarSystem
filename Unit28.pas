unit Unit28;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,JPEG;

type
  TForm28 = class(TForm)
    accessories: TImage;
    acspic: TImage;
    add: TImage;
    addpic: TImage;
    bg: TImage;
    circles: TImage;
    coloradd: TImage;
    colorcr: TImage;
    colordlg: TColorDialog;
    colorpen: TComboBox;
    colorplanet: TComboBox;
    crc: TImage;
    create: TImage;
    emotions: TComboBox;
    emotionspic: TImage;
    eyes: TImage;
    eyespic: TImage;
    history: TMemo;
    name: TEdit;
    pen: TImage;
    planet: TImage;
    Panel1: TPanel;
    SaveDialog1: TSaveDialog;
    procedure circlesClick(Sender: TObject);
    procedure colorcrClick(Sender: TObject);
    procedure colorpenChange(Sender: TObject);
    procedure colorplanetChange(Sender: TObject);
    procedure emotionsChange(Sender: TObject);
    procedure eyespicClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure addClick(Sender: TObject);
    procedure createClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form28: TForm28;
     path1,path2,path3:string;
  clickeyes,clickadd,w,xx,clickacs,clickcr,w1:integer;
    bmp: TBitmap;
jpg: TJPEGImage;
DC: hDC;
save:string;

implementation
       uses unit9;
{$R *.dfm}

procedure TForm28.addClick(Sender: TObject);
begin
if clickadd<=10 then
clickadd:=clickadd+1 else clickadd:=1;

addpic.Picture.LoadFromFile(path1+'\пришельцы одежда\одежда\'+inttostr(clickadd)+'.png')
end;

procedure TForm28.circlesClick(Sender: TObject);
begin
  w1:=2;
if clickcr<=9 then
clickcr:=clickcr+1 else clickcr:=0;
 colorcr.Visible:=true;
 if clickcr=0 then   colorcr.Visible:=false;

crc.Picture.LoadFromFile(path1+'\пришельцы одежда\причи\'+inttostr(clickcr)+'.png')
end;

procedure TForm28.colorcrClick(Sender: TObject);
begin
path3:=path1+'\пришельцы одежда\причи\'+inttostr(clickcr)+'\';
crc.Picture.LoadFromFile(path3+inttostr(w1)+'.png');
if w1<17 then w1:=w1+1 else w1:=1;
end;

procedure TForm28.colorpenChange(Sender: TObject);
var i:integer;
begin
with colorpen do
for i := 0 to  20 do
  begin
    if itemindex=i then
      pen.picture.LoadFromFile(path1+'пришельцы одежда\свечение\'+inttostr(i+1)+'.png');
  end;
end;
procedure TForm28.colorplanetChange(Sender: TObject);
var i:integer;
begin
with colorplanet do
for i := 0 to 19 do
  begin
    if itemindex=i then
      planet.picture.LoadFromFile(path1+'пришельцы одежда\тело. цвет\'+inttostr(i+1)+'.png');
  end;
end;


procedure TForm28.createClick(Sender: TObject);
begin

savedialog1.FileName:=  name.Text;
bmp.Free;
bmp := TBitmap.Create;
try
DC := GetDC(panel1.Handle);
try

bmp.Width := panel1.Width;
bmp.Height := panel1.Height;
// получаем снимок
BitBlt(bmp.Canvas.Handle, 0, 0, bmp.Width, bmp.Height,
DC, 0, 0, SRCCOPY);
finally
ReleaseDC(DC, panel1.Handle);
end;

// конвертируем Bitmap в JPEG и сохраняем

jpg:= TJPEGImage.Create;
if savedialog1.Execute then
     save:=savedialog1.FileName+'.jpg';
try

jpg.Assign(bmp);
jpg.SaveToFile(save);
finally
jpg.Free;
end;
finally
bmp.Free;
end;
end;

procedure TForm28.emotionsChange(Sender: TObject);
var i:integer;
begin
with emotions do
for i := 0 to 13 do
  begin
    if itemindex=i then   begin
      emotionspic.picture.LoadFromFile(path1+'пришельцы одежда\эмоции\'+inttostr(i+1)+'.png'); eyes.Visible:=true; end;
    if ((itemindex=12) or (itemindex=11) or (itemindex=10) or (itemindex=5)) then eyes.Visible:=false;
    if (itemindex=7)  then begin eyes.BringToFront;  acspic.BringToFront; end;
  end;
end;

procedure TForm28.eyespicClick(Sender: TObject);
begin
if ((emotions.ItemIndex=10) or (emotions.ItemIndex=11) or (emotions.ItemIndex=5 )or (emotions.ItemIndex=12)) then
form28.showmodal else begin
if clickeyes<=18 then
clickeyes:=clickeyes+1 else clickeyes:=1;
eyes.Picture.LoadFromFile(path1+'\пришельцы одежда\глаз(а)\'+inttostr(clickeyes)+'.png')
end;
end;

procedure TForm28.FormCreate(Sender: TObject);
begin
path1:=extractfiledir(application.ExeName);
form28.Cursor:=1;
emotions.ItemIndex:=0;
colorpen.ItemIndex:=0;
colorplanet.ItemIndex:=12;
clickeyes:=1;
clickadd:=0;
clickacs:=1;
path1:=path1+'\';
end;

end.
