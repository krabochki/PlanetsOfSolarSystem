unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls,unit7, Vcl.MPlayer, Vcl.Imaging.pngimage;

type
  TForm3 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Image2: TImage;
    Label2: TLabel;
    Image3: TImage;
    Image4: TImage;
    Image6: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image7: TImage;
    Image8: TImage;
    Image5: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    MediaPlayer2: TMediaPlayer;
    Image20: TImage;
    Image21: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image19Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MediaPlayer2Notify(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image13MouseEnter(Sender: TObject);
    procedure Image13MouseLeave(Sender: TObject);
    procedure Image3MouseEnter(Sender: TObject);
    procedure Image3MouseLeave(Sender: TObject);
    procedure Image4MouseEnter(Sender: TObject);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Image19MouseEnter(Sender: TObject);
    procedure Image19MouseLeave(Sender: TObject);
    procedure Image4MouseLeave(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image21Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  x:integer;

implementation

{$R *.dfm}

uses Unit4, Unit8, Unit10, Unit9, Unit12, Unit25, Unit1;

procedure TForm3.FormActivate(Sender: TObject);
begin
form1.hide;
 if unit4.a=2 then
begin
if unit4.songstatement=1 then MediaPlayer2.FileName := GetCurrentDir()+'\plastinki\onceuponatime.mp3';
if unit4.songstatement=2 then MediaPlayer2.FileName := GetCurrentDir()+'\plastinki\snowy.mp3';
if unit4.songstatement=3 then MediaPlayer2.FileName := GetCurrentDir()+'\plastinki\homemusicbox.mp3';
if unit4.songstatement=4 then MediaPlayer2.FileName := GetCurrentDir()+'\plastinki\home.mp3';
MediaPlayer2.Open;
MediaPlayer2.AutoRewind := True;
MediaPlayer2.Play;
MediaPlayer2.Notify := True;
         unit4.a:=9;

end;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
x:=1;
form3.Cursor:=1;
image17.Picture.LoadFromFile('������������/���� ����� ������ ������.bmp');
image17.Align:=alclient;
image17.Stretch:=true;
Image1.align:=alClient;
image18.align:=alclient;
image1.Picture.LoadFromFile('������������/pixel-art-wallpaper-20072219574552048x1152.jpg');
image2.Picture.LoadFromFile('������������/�������1.bmp');
image3.Picture.LoadFromFile('������������/������a.bmp');
image4.Picture.LoadFromFile('������������/������2a.bmp');
image5.Picture.LoadFromFile('������������/������.bmp');
image6.Picture.LoadFromFile('������������/ufo�.bmp');
image7.Picture.LoadFromFile('������������/����������.bmp');
image9.Picture.LoadFromFile('������������/������.bmp');
image10.Picture.LoadFromFile('������������/����� �������.bmp');
image11.Picture.LoadFromFile('������������/�����.bmp');
image12.Picture.LoadFromFile('������������/����.bmp');
image14.Picture.LoadFromFile('������������/�����.bmp');
image15.Picture.LoadFromFile('������������/�����.bmp');
image16.Picture.LoadFromFile('������������/�����.bmp');
image18.Picture.LoadFromFile('������������/������.bmp');
image13.Picture.LoadFromFile('������������/������55.bmp');
image8.Picture.LoadFromFile('������������/����� �������.bmp');
image19.Picture.LoadFromFile('������������/�������.bmp');
label1.Font.Color:=clwhite;
end;

procedure TForm3.Image13Click(Sender: TObject);
begin
form7.show;
form3.Hide;
image4.Enabled:=true;
image3.Enabled:=true;
image3.Picture.LoadFromFile('������������/������.bmp');
image4.Picture.LoadFromFile('������������/������2.bmp');
image8.Picture.LoadFromFile('������������/����� ������.bmp');
image6.Picture.LoadFromFile('������������/ufo.bmp');
image2.Picture.LoadFromFile('������������/�������.bmp');
image14.Visible:=false;
image15.Visible:=false;
image16.visible:=false;
image17.visible:=false;
image1.Visible:=true;
image11.Visible:=true;
image10.Visible:=true;
image12.Visible:=true;
image9.Visible:=true;
image7.Visible:=true;
label1.Font.Color:=$00FFE3E7;
image13.Enabled:=false;
x:=x+1;
image21.Picture.LoadFromFile('������������/door.png');
end;

procedure TForm3.Image13MouseEnter(Sender: TObject);
begin
if x=1 then
form3.Cursor:=2
else form3.Cursor:=3;
end;

procedure TForm3.Image13MouseLeave(Sender: TObject);
begin
form3.Cursor:=1;
end;

procedure TForm3.Image19Click(Sender: TObject);
begin
image18.Visible:=false;
image19.Visible:=false;
end;




procedure TForm3.Image19MouseEnter(Sender: TObject);
begin
form3.Cursor:=2;
end;

procedure TForm3.Image19MouseLeave(Sender: TObject);
begin
form3.Cursor:=1;
end;

procedure TForm3.Image21Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm3.Image2Click(Sender: TObject);
begin
theories.showmodal;
end;

procedure TForm3.Image2MouseEnter(Sender: TObject);
begin
if x=1 then
form3.Cursor:=3
else form3.Cursor:=2;
end;

procedure TForm3.Image2MouseLeave(Sender: TObject);
begin
form3.Cursor:=1;
end;

procedure TForm3.Image3Click(Sender: TObject);
begin

planets2.show;
planets.showmodal;
end;

procedure TForm3.Image3MouseEnter(Sender: TObject);
begin
if x=1 then
form3.Cursor:=3
else form3.Cursor:=2;
end;

procedure TForm3.Image3MouseLeave(Sender: TObject);
begin
form3.Cursor:=1;
end;

procedure TForm3.Image4Click(Sender: TObject);
begin

form12.show;
aliens.Showmodal;
end;

procedure TForm3.Image4MouseEnter(Sender: TObject);
begin
if x=1 then
form3.Cursor:=3
else form3.cursor:=2;
end;

procedure TForm3.Image4MouseLeave(Sender: TObject);
begin
form3.Cursor:=1;
end;

procedure TForm3.MediaPlayer2Notify(Sender: TObject);
begin
//������ �����������
if unit4.a=4 then
    begin
        if MediaPlayer2.NotifyValue=nvSuccessful then
            begin
                MediaPlayer2.Play;
                MediaPlayer2.Notify := True;
            end;
    end
end;

end.
