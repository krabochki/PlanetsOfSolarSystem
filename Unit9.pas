unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg,unit12, Vcl.Imaging.GIFImg, clipbrd;

type
  TALIENS = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    Image1: TImage;
    Memo1: TMemo;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Timer1: TTimer;
    Timer2: TTimer;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Timer3: TTimer;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    Image15: TImage;
    N7: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image7DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure Image7MouseEnter(Sender: TObject);
    procedure Image7MouseLeave(Sender: TObject);
    procedure Image5MouseEnter(Sender: TObject);
    procedure Image5MouseLeave(Sender: TObject);
    procedure Image4MouseEnter(Sender: TObject);
    procedure Image6MouseEnter(Sender: TObject);
    procedure Image14MouseLeave(Sender: TObject);
    procedure Image6MouseLeave(Sender: TObject);
    procedure Image4MouseLeave(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image12MouseEnter(Sender: TObject);
    procedure Image12MouseLeave(Sender: TObject);
    procedure Memo1MouseEnter(Sender: TObject);
    procedure Image15MouseEnter(Sender: TObject);
    procedure Memo1MouseLeave(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ALIENS: TALIENS;
  GIF: Tgifimage;
  n:integer;
  koef:integer;


implementation

{$R *.dfm}

uses Unit1,unit3, Unit16, Unit28,unit8, Unit23;

procedure TALIENS.FormActivate(Sender: TObject);
begin
timer3.Enabled:=true;

if image9.Visible=true then  begin

   GIF:=TGIFImage.Create;
GIF.LoadFromFile ('������������\����� ������������\fff.gif');
GIF.Animate:=True;

Image9.Picture.Assign(GIF);
timer1.Enabled:=true;
end;
end;

procedure TALIENS.FormClose(Sender: TObject; var Action: TCloseAction);
begin

form12.Close;  //�������� ������ � ���� ������ ������������� 12��, ���� � ���� Memo1

end;

procedure TALIENS.FormCreate(Sender: TObject);
var Rect: TRect;
begin
aliens.Cursor:=1;
  n:=1;
  memo1.Lines.loadfromfile('�����\��������.txt');

  Screen.MenuFont.Name := 'Fifaks 1.0 dev1'; //��������� ������ � ���� �����
  Screen.MenuFont.size := 12; //��������� ������� ������ � ���� �����
  SendMessage(Memo1.Handle, EM_GETRECT, 0, LongInt(@Rect)); //���������� �������� � ���� Memo1
  Rect.Left:= 20;
  Rect.Top:= 20;
  SendMessage(Memo1.Handle, EM_SETRECT, 0, LongInt(@Rect));
  Memo1.Refresh;

end;

procedure TALIENS.FormKeyPress(Sender: TObject; var Key: Char);
begin
timer2.Enabled:=false;
timer1.Enabled:=false;
   image9.Visible:=false;
image11.visible:=true;
gif.Animate:=false;
image10.Visible:=false;

image12.Visible:=true;

form12.Image9.Visible:=false;
form12.Image3.Visible:=true;


end;

procedure TALIENS.Image12Click(Sender: TObject);
begin
   image12.Visible:=false;
image13.Visible:=true;
image14.Visible:=true;
image11.Visible:=false;
form12.Image3.Visible:=false;
form12.Image4.Visible:=true;
end;

procedure TALIENS.Image12MouseEnter(Sender: TObject);
begin
aliens.Cursor:=2;
end;

procedure TALIENS.Image12MouseLeave(Sender: TObject);
begin
aliens.Cursor:=1;
end;

procedure TALIENS.Image13Click(Sender: TObject);
begin
image14.Visible:=false;
image13.Visible:=false;
image1.Visible:=true;
memo1.Visible:=true;
form12.Image4.Visible:=false;
form12.Image1.Visible:=true;
form12.Image2.Visible:=true;
image2.Visible:=true;
image3.Visible:=true;
image4.Visible:=true;
image5.Visible:=true;
image6.Visible:=true;
image3.Visible:=true;
image7.Visible:=true;
image15.Visible:=true;
form12.N1.Visible:=true;
form12.N2.visible:=true;
form12.N3.Visible:=true;
N1.Visible:=true;
N2.visible:=true;
N3.Visible:=true;

end;


procedure TALIENS.Image14MouseLeave(Sender: TObject);
begin
aliens.Cursor:=1;
end;

procedure TALIENS.Image15MouseEnter(Sender: TObject);
begin
form1.Cursor:=1;
end;

procedure TALIENS.Image4Click(Sender: TObject);
begin
if n<9 then begin
n:=n+1;
image4.Enabled:=true;
end;
if n=9 then
image4.Enabled:=false;
if n>1 then
image6.Enabled:=true;
if n=1 then
  begin
    memo1.Lines.loadfromfile('�����\��������.txt');
    image2.Picture.LoadFromFile('������������\����� ������������\���������1.png');
    image3.Picture.LoadFromFile('������������\����� ������������\����.png');
  end;
if n=2 then
  begin
    memo1.Lines.loadfromfile('�����\�������� � ������� ��������.txt');
    image2.Picture.LoadFromFile('������������\����� ������������\���������2.png');
    image3.Picture.LoadFromFile('������������\����� ������������\����2.png');
  end;
if n=3 then
  begin
    memo1.Lines.loadfromfile('�����\� ����� ��� ���.txt');
    image2.Picture.LoadFromFile('������������\����� ������������\���������3.png');
    image3.Picture.LoadFromFile('������������\����� ������������\����3.png');
  end;
if n=4 then
  begin
    memo1.Lines.loadfromfile('�����\��������.txt');
    image2.Picture.LoadFromFile('������������\����� ������������\���������4.png');
    image3.Picture.LoadFromFile('������������\����� ������������\����4.png');
  end;
if n=5 then
  begin
    memo1.Lines.loadfromfile('�����\��������� ������.txt');
    image2.Picture.LoadFromFile('������������\����� ������������\���������5.png');
    image3.Picture.LoadFromFile('������������\����� ������������\����5.png');
  end;
if n=6 then
  begin
    memo1.Lines.loadfromfile('�����\������.txt');
    image2.Picture.LoadFromFile('������������\����� ������������\���������6.png');
    image3.Picture.LoadFromFile('������������\����� ������������\����6.png');
  end;
  if n=7 then
  begin
    memo1.Lines.loadfromfile('�����\��������.txt');
    image2.Picture.LoadFromFile('������������\����� ������������\���������7.png');
    image3.Picture.LoadFromFile('������������\����� ������������\����7.png');
  end;
  if n=8 then
  begin
    memo1.Lines.loadfromfile('�����\����.txt');
    image2.Picture.LoadFromFile('������������\����� ������������\���������8.png');
    image3.Picture.LoadFromFile('������������\����� ������������\����8.png');
  end;
  if n=9 then
  begin
    memo1.Lines.loadfromfile('�����\�������.txt');
    image2.Picture.LoadFromFile('������������\����� ������������\���������9.png');
    image3.Picture.LoadFromFile('������������\����� ������������\����9.png');
  end;
end;

procedure TALIENS.Image4MouseEnter(Sender: TObject);
begin
if image4.Enabled=true then
aliens.Cursor:=2 else aliens.Cursor:=3;
end;

procedure TALIENS.Image4MouseLeave(Sender: TObject);
begin
aliens.Cursor:=1;
end;

procedure TALIENS.Image5Click(Sender: TObject);
begin
aliens.close;
form12.Close;
end;

procedure TALIENS.Image5MouseEnter(Sender: TObject);
begin
aliens.Cursor:=2;

end;

procedure TALIENS.Image5MouseLeave(Sender: TObject);
begin
aliens.Cursor:=1;
end;

procedure TALIENS.Image6Click(Sender: TObject);
begin
if n=9 then  image4.Enabled:=true;

if n>1 then
begin
n:=n-1;
image6.Enabled:=true;
end;
if n=1 then image6.Enabled:=false;

if n=1 then
  begin
    memo1.Lines.loadfromfile('�����\��������.txt');
    image2.Picture.LoadFromFile('������������\����� ������������\���������1.png');
    image3.Picture.LoadFromFile('������������\����� ������������\����.png');
  end;
if n=2 then
  begin
    memo1.Lines.loadfromfile('�����\�������� � ������� ��������.txt');
    image2.Picture.LoadFromFile('������������\����� ������������\���������2.png');
    image3.Picture.LoadFromFile('������������\����� ������������\����2.png');
  end;
if n=3 then
  begin
    memo1.Lines.loadfromfile('�����\� ����� ��� ���.txt');
    image2.Picture.LoadFromFile('������������\����� ������������\���������3.png');
    image3.Picture.LoadFromFile('������������\����� ������������\����3.png');
  end;
if n=4 then
  begin
    memo1.Lines.loadfromfile('�����\��������.txt');
    image2.Picture.LoadFromFile('������������\����� ������������\���������4.png');
    image3.Picture.LoadFromFile('������������\����� ������������\����4.png');
  end;
if n=5 then
  begin
    memo1.Lines.loadfromfile('�����\��������� ������.txt');
    image2.Picture.LoadFromFile('������������\����� ������������\���������5.png');
    image3.Picture.LoadFromFile('������������\����� ������������\����5.png');
  end;
if n=6 then
  begin
    memo1.Lines.loadfromfile('�����\������.txt');
    image2.Picture.LoadFromFile('������������\����� ������������\���������6.png');
    image3.Picture.LoadFromFile('������������\����� ������������\����6.png');
  end;
  if n=7 then
  begin
    memo1.Lines.loadfromfile('�����\��������.txt');
    image2.Picture.LoadFromFile('������������\����� ������������\���������7.png');
    image3.Picture.LoadFromFile('������������\����� ������������\����7.png');
  end;
  if n=8 then
  begin
    memo1.Lines.loadfromfile('�����\����.txt');
    image2.Picture.LoadFromFile('������������\����� ������������\���������8.png');
    image3.Picture.LoadFromFile('������������\����� ������������\����8.png');
  end;
  if n=9 then
  begin
    memo1.Lines.loadfromfile('�����\�������.txt');
    image2.Picture.LoadFromFile('������������\����� ������������\���������9.png');
    image3.Picture.LoadFromFile('������������\����� ������������\����9.png');
  end;
end;

procedure TALIENS.Image6MouseEnter(Sender: TObject);
begin
if image6.Enabled=true then
aliens.Cursor:=2 else aliens.Cursor:=3;
end;

procedure TALIENS.Image6MouseLeave(Sender: TObject);
begin
aliens.Cursor:=1;
end;

procedure TALIENS.Image7Click(Sender: TObject);
begin
if image8.Visible=false then
image8.Visible:=true else image8.Visible:=false;
end;

procedure TALIENS.Image7DblClick(Sender: TObject);
begin
TClipboard.Create;
 ClipBoard.SetTextBuf(memo1.Lines.GetText) ;
end;


procedure TALIENS.Image7MouseEnter(Sender: TObject);
begin
aliens.Cursor:=4;
end;

procedure TALIENS.Image7MouseLeave(Sender: TObject);
begin
aliens.Cursor:=1;
end;

procedure TALIENS.Memo1MouseEnter(Sender: TObject);
begin
aliens.Cursor:=1;
end;

procedure TALIENS.Memo1MouseLeave(Sender: TObject);
begin
aliens.Cursor:=1;
end;

procedure TALIENS.N10Click(Sender: TObject);
begin
 unit8.m:=4;
 form23.showmodal;
end;

procedure TALIENS.N11Click(Sender: TObject);
begin
  unit8.m:=5;
 form23.showmodal;
end;

procedure TALIENS.N13Click(Sender: TObject);
begin
n:=1;
memo1.Lines.loadfromfile('�����\��������.txt');
image3.Picture.LoadFromFile('������������\����� ������������\����.png');
image2.Picture.LoadFromFile('������������\����� ������������\���������.png');
end;

procedure TALIENS.N19Click(Sender: TObject);
begin
n:=2;
memo1.Lines.loadfromfile('�����\�������� � ������� ��������.txt');
image3.Picture.LoadFromFile('������������\����� ������������\����2.png');
image2.Picture.LoadFromFile('������������\����� ������������\���������2.png');
end;

procedure TALIENS.N4Click(Sender: TObject);
begin
form28.showmodal;
end;

procedure TALIENS.N5Click(Sender: TObject);
begin
puzzleopen.showmodal;
end;

procedure TALIENS.N6Click(Sender: TObject);
begin
 unit8.m:=3;
 form23.showmodal;
end;

procedure TALIENS.N7Click(Sender: TObject);
begin
unit8.m:=6;
form23.Show;
end;

procedure TALIENS.Timer1Timer(Sender: TObject);
begin

timer2.Enabled:=true;
timer1.Enabled:=false;
end;

procedure TALIENS.Timer2Timer(Sender: TObject);
begin
image10.visible:=true;
timer2.Enabled:=false;
end;

procedure TALIENS.Timer3Timer(Sender: TObject);
begin
 aliens.Color:=$00191E52;
form12.Color:=$00191E52;
timer3.enabled:=false;
end;

end.
