unit Unit8;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.GIFImg, Vcl.Imaging.pngimage;
type
  TPLANETS = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N12: TMenuItem;
    Image1: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    memo2: TMemo;
    Timer1: TTimer;
    Timer2: TTimer;
    N17: TMenuItem;
    N18: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Image12Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image4MouseEnter(Sender: TObject);
    procedure Image4MouseLeave(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image6MouseEnter(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image7MouseEnter(Sender: TObject);
    procedure Image7MouseLeave(Sender: TObject);
    procedure Image12MouseLeave(Sender: TObject);
    procedure Image12MouseEnter(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure Image6MouseLeave(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  PLANETS: TPLANETS; s: textfile; n:integer; GIF: Tgifimage;    m:integer;
implementation uses unit25,unit13,unit26,unit27, Unit23,unit14;
{$R *.dfm}
procedure TPLANETS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
planets.close;
planets2.Close;
end;

procedure TPLANETS.FormCreate(Sender: TObject);
var Rect:Trect;
begin n:=1; memo2.Lines.loadfromfile('�����\��������.txt');
Screen.MenuFont.Name := 'Fifaks 1.0 dev1'; //��������� ������ � ���� �����
Screen.MenuFont.size := 12; //��������� ������� ������ � ���� �����
SendMessage(Memo2.Handle, EM_GETRECT, 0, longint(@Rect)); //���������� �������� � ���� memo2
Rect.Left:= 20; Rect.Top:= 20; SendMessage(Memo2.Handle, EM_SETRECT, 0, LongInt(@Rect));
Memo2.Refresh; planets.Cursor:=1;
if image9.Visible=true then begin GIF:=TGIFImage.Create;
GIF.LoadFromFile ('����� �����\5c97bf414c9cea1.gif');
GIF.Animate:=True; Image9.Picture.Assign(GIF); timer1.Enabled:=true; end;end;

procedure TPLANETS.FormHide(Sender: TObject);
begin
planets2.hide;
end;

procedure TPLANETS.FormKeyPress(Sender: TObject; var Key: Char);
begin
timer2.Enabled:=false; timer1.Enabled:=false;
image9.Visible:=false; image11.visible:=true;
gif.Animate:=false;
image10.Visible:=false; image12.Visible:=true;
planets2.Image9.Visible:=false; planets2.Image3.Visible:=true;
end;

procedure TPLANETS.Image12Click(Sender: TObject);
begin
image12.Visible:=false; image13.Visible:=true; image14.Visible:=true; image11.Visible:=false;
planets2.Image3.Visible:=false; planets2.Image4.Visible:=true;
end;

procedure TPLANETS.Image12MouseEnter(Sender: TObject);
begin
planets.Cursor:=2;
end;

procedure TPLANETS.Image12MouseLeave(Sender: TObject);
begin
planets.Cursor:=1;
end;

procedure TPLANETS.Image13Click(Sender: TObject);
begin
image14.Visible:=false; image13.Visible:=false; image1.Visible:=true;
memo2.Visible:=true;
planets2.Image4.Visible:=false; planets2.Image1.Visible:=true; planets2.Image2.Visible:=true;
n1.Visible:=true; n4.Visible:=true; n3.Visible:=true;
planets2.N1.Visible:=true; planets2.N4.visible:=true; planets2.N3.Visible:=true;
image2.Visible:=true; image3.Visible:=true; image4.Visible:=true; image5.Visible:=true;
image6.Visible:=true; image3.Visible:=true; image7.Visible:=true; image15.Visible:=true;
end;

procedure TPLANETS.Image4Click(Sender: TObject);
begin
if n<6 then begin n:=n+1; image4.Enabled:=true; end;
if n=6 then image4.Enabled:=false;
if n>1 then image6.Enabled:=true;
if n=1 then begin
memo2.Lines.loadfromfile('�����\1.txt');
image2.Picture.LoadFromFile('����� �����\���������1.png');
image3.Picture.LoadFromFile('����� �����\����.png');
image1.Picture.LoadFromFile('����� �����\�������1.png');
image4.Picture.LoadFromFile('����� �����\������ ������ ���� 1.png');
image5.Picture.LoadFromFile('����� �����\������ ���� ���� 1.png');
image6.Picture.LoadFromFile('����� �����\������ ����� ���� 1.png');
image7.Picture.LoadFromFile('����� �����\����� ����1.png');
image8.Picture.LoadFromFile('����� �����\��������� ����1.png');
planets2.image2.Picture.LoadFromFile('����� �����\�������1.png'); end;
if n=2 then begin
memo2.Lines.loadfromfile('�����\2.txt');
image2.Picture.LoadFromFile('����� �����\���������2.png');
image3.Picture.LoadFromFile('����� �����\����2.png');
image1.Picture.LoadFromFile('����� �����\�������2.png');
image4.Picture.LoadFromFile('����� �����\������ ������ ���� 2.png');
image5.Picture.LoadFromFile('����� �����\������ ���� ���� 2.png');
image6.Picture.LoadFromFile('����� �����\������ ����� ���� 2.png');
image7.Picture.LoadFromFile('����� �����\����� ����2.png');
image8.Picture.LoadFromFile('����� �����\��������� ����2.png');
planets2.image2.Picture.LoadFromFile('����� �����\�������2.png'); end;
if n=3 then begin
memo2.Lines.loadfromfile('�����\3.txt');
image2.Picture.LoadFromFile('����� �����\���������3.png');
image3.Picture.LoadFromFile('����� �����\����3.png');
image1.Picture.LoadFromFile('����� �����\�������3.png');
image4.Picture.LoadFromFile('����� �����\������ ������ ���� 3.png');
image5.Picture.LoadFromFile('����� �����\������ ���� ���� 3.png');
image6.Picture.LoadFromFile('����� �����\������ ����� ���� 3.png');
image7.Picture.LoadFromFile('����� �����\����� ����3.png');
image8.Picture.LoadFromFile('����� �����\��������� ����3.png');
planets2.image2.Picture.LoadFromFile('����� �����\�������3.png'); end;
if n=4 then begin
memo2.Lines.loadfromfile('�����\4.txt');
image2.Picture.LoadFromFile('����� �����\���������4.png');
image3.Picture.LoadFromFile('����� �����\����4.png');
image1.Picture.LoadFromFile('����� �����\�������4.png');
image4.Picture.LoadFromFile('����� �����\������ ������ ���� 4.png');
image5.Picture.LoadFromFile('����� �����\������ ���� ���� 4.png');
image6.Picture.LoadFromFile('����� �����\������ ����� ���� 4.png');
image7.Picture.LoadFromFile('����� �����\����� ����4.png');
image8.Picture.LoadFromFile('����� �����\��������� ����4.png');
planets2.image2.Picture.LoadFromFile('����� �����\�������4.png'); end;
if n=5 then begin
memo2.Lines.loadfromfile('�����\5.txt');
image2.Picture.LoadFromFile('����� �����\���������5.png');
image3.Picture.LoadFromFile('����� �����\����5.png');
image1.Picture.LoadFromFile('����� �����\�������5.png');
image4.Picture.LoadFromFile('����� �����\������ ������ ���� 5.png');
image5.Picture.LoadFromFile('����� �����\������ ���� ���� 5.png');
image6.Picture.LoadFromFile('����� �����\������ ����� ���� 5.png');
image7.Picture.LoadFromFile('����� �����\����� ����5.png');
image8.Picture.LoadFromFile('����� �����\��������� ����5.png');
planets2.image2.Picture.LoadFromFile('����� �����\�������5.png');
end;
if n=6 then begin
memo2.Lines.loadfromfile('�����\6.txt');
image2.Picture.LoadFromFile('����� �����\���������6.png');
image3.Picture.LoadFromFile('����� �����\����6.png');
image1.Picture.LoadFromFile('����� �����\�������6.png');
image4.Picture.LoadFromFile('����� �����\������ ������ ���� 6.png');
image5.Picture.LoadFromFile('����� �����\������ ���� ���� 6.png');
image6.Picture.LoadFromFile('����� �����\������ ����� ���� 6.png');
image7.Picture.LoadFromFile('����� �����\����� ����6.png');
image8.Picture.LoadFromFile('����� �����\��������� ����6.png');
planets2.image2.Picture.LoadFromFile('����� �����\�������6.png'); end; end;

procedure TPLANETS.Image4MouseEnter(Sender: TObject);
begin
if image4.Enabled=true then planets.Cursor:=2 else planets.Cursor:=3;
end;

procedure TPLANETS.Image4MouseLeave(Sender: TObject);
begin
planets.Cursor:=1;
end;

procedure TPLANETS.Image5Click(Sender: TObject);
begin
planets.close;
planets2.Close;
end;

procedure TPLANETS.Image6Click(Sender: TObject);
begin
if n=6 then image4.Enabled:=true;
if n>1 then begin n:=n-1; image6.Enabled:=true; end;
if n=1 then image6.Enabled:=false;
if n=1 then begin
memo2.Lines.loadfromfile('�����\1.txt');
image2.Picture.LoadFromFile('����� �����\���������1.png');
image3.Picture.LoadFromFile('����� �����\����.png');
image1.Picture.LoadFromFile('����� �����\�������1.png');
image4.Picture.LoadFromFile('����� �����\������ ������ ���� 1.png');
image5.Picture.LoadFromFile('����� �����\������ ���� ���� 1.png');
image6.Picture.LoadFromFile('����� �����\������ ����� ���� 1.png');
image7.Picture.LoadFromFile('����� �����\����� ����1.png');
image8.Picture.LoadFromFile('����� �����\��������� ����1.png');
planets2.image2.Picture.LoadFromFile('����� �����\�������1.png'); end;
if n=2 then begin
memo2.Lines.loadfromfile('�����\2.txt');
image2.Picture.LoadFromFile('����� �����\���������2.png');
image3.Picture.LoadFromFile('����� �����\����2.png');
image1.Picture.LoadFromFile('����� �����\�������2.png');
image4.Picture.LoadFromFile('����� �����\������ ������ ���� 2.png');
image5.Picture.LoadFromFile('����� �����\������ ���� ���� 2.png');
image6.Picture.LoadFromFile('����� �����\������ ����� ���� 2.png');
image7.Picture.LoadFromFile('����� �����\����� ����2.png');
image8.Picture.LoadFromFile('����� �����\��������� ����2.png');
planets2.image2.Picture.LoadFromFile('����� �����\�������2.png'); end;
if n=3 then
begin
memo2.Lines.loadfromfile('�����\3.txt');
image2.Picture.LoadFromFile('����� �����\���������3.png');
image3.Picture.LoadFromFile('����� �����\����3.png');
image1.Picture.LoadFromFile('����� �����\�������3.png');
image4.Picture.LoadFromFile('����� �����\������ ������ ���� 3.png');
image5.Picture.LoadFromFile('����� �����\������ ���� ���� 3.png');
image6.Picture.LoadFromFile('����� �����\������ ����� ���� 3.png');
image7.Picture.LoadFromFile('����� �����\����� ����3.png');
image8.Picture.LoadFromFile('����� �����\��������� ����3.png');
planets2.image2.Picture.LoadFromFile('����� �����\�������3.png'); end;
if n=4 then begin
memo2.Lines.loadfromfile('�����\4.txt');
image2.Picture.LoadFromFile('����� �����\���������4.png');
image3.Picture.LoadFromFile('����� �����\����4.png');
image1.Picture.LoadFromFile('����� �����\�������4.png');
image4.Picture.LoadFromFile('����� �����\������ ������ ���� 4.png');
image5.Picture.LoadFromFile('����� �����\������ ���� ���� 4.png');
image6.Picture.LoadFromFile('����� �����\������ ����� ���� 4.png');
image7.Picture.LoadFromFile('����� �����\����� ����4.png');
image8.Picture.LoadFromFile('����� �����\��������� ����4.png');
planets2.image2.Picture.LoadFromFile('����� �����\�������4.png'); end;
if n=5 then begin
memo2.Lines.loadfromfile('�����\5.txt');
image2.Picture.LoadFromFile('����� �����\���������5.png');
image3.Picture.LoadFromFile('����� �����\����5.png');
image1.Picture.LoadFromFile('����� �����\�������5.png');
image4.Picture.LoadFromFile('����� �����\������ ������ ���� 5.png');
image5.Picture.LoadFromFile('����� �����\������ ���� ���� 5.png');
image6.Picture.LoadFromFile('����� �����\������ ����� ���� 5.png');
image7.Picture.LoadFromFile('����� �����\����� ����5.png');
image8.Picture.LoadFromFile('����� �����\��������� ����5.png');
planets2.image2.Picture.LoadFromFile('����� �����\�������5.png'); end;
if n=6 then begin
memo2.Lines.loadfromfile('�����\6.txt');
image2.Picture.LoadFromFile('����� �����\���������6.png');
image3.Picture.LoadFromFile('����� �����\����6.png');
image1.Picture.LoadFromFile('����� �����\�������6.png');
image4.Picture.LoadFromFile('����� �����\������ ������ ���� 6.png');
image5.Picture.LoadFromFile('����� �����\������ ���� ���� 6.png');
image6.Picture.LoadFromFile('����� �����\������ ����� ���� 6.png');
image7.Picture.LoadFromFile('����� �����\����� ����6.png');
image8.Picture.LoadFromFile('����� �����\��������� ����6.png');
planets2.image2.Picture.LoadFromFile('����� �����\�������6.png'); end; end;

procedure TPLANETS.Image6MouseEnter(Sender: TObject);
begin
if image6.Enabled=true then planets.Cursor:=2 else planets.Cursor:=3;
end;

procedure TPLANETS.Image6MouseLeave(Sender: TObject);
begin
planets.Cursor:=1;
end;

procedure TPLANETS.Image7Click(Sender: TObject);
begin
if image8.Visible=false then image8.Visible:=true else image8.Visible:=false;
end;

procedure TPLANETS.Image7MouseEnter(Sender: TObject);
begin
planets.Cursor:=2;
end;

procedure TPLANETS.Image7MouseLeave(Sender: TObject);
begin
planets.Cursor:=1;
end;

procedure TPLANETS.N10Click(Sender: TObject);
begin
planets.Hide;
form26.showmodal;
end;

procedure TPLANETS.N12Click(Sender: TObject);
begin
m:=1;

form23.showmodal;
end;

procedure TPLANETS.N17Click(Sender: TObject);
begin
if n=6 then image4.Enabled:=false;
if n>1 then image6.Enabled:=true;
if n<6 then image4.Enabled:=true;
if n=1 then image6.Enabled:=false; n:=1;
memo2.Lines.loadfromfile('�����\1.txt');
image2.Picture.LoadFromFile('����� �����\���������1.png');
image3.Picture.LoadFromFile('����� �����\����.png');
image1.Picture.LoadFromFile('����� �����\�������1.png');
image4.Picture.LoadFromFile('����� �����\������ ������ ���� 1.png');
image5.Picture.LoadFromFile('����� �����\������ ���� ���� 1.png');
image6.Picture.LoadFromFile('����� �����\������ ����� ���� 1.png');
image7.Picture.LoadFromFile('����� �����\����� ����1.png');
image8.Picture.LoadFromFile('����� �����\��������� ����1.png');
planets2.image2.Picture.LoadFromFile('����� �����\�������1.png');
end;

procedure TPLANETS.N18Click(Sender: TObject);
begin
if n=6 then image4.Enabled:=false;
if n>1 then image6.Enabled:=true;
if n<6 then image4.Enabled:=true;
if n=1 then image6.Enabled:=false; n:=6;
memo2.Lines.loadfromfile('�����\6.txt');
image2.Picture.LoadFromFile('����� �����\���������6.png');
image3.Picture.LoadFromFile('����� �����\����6.png');
image1.Picture.LoadFromFile('����� �����\�������6.png');
image4.Picture.LoadFromFile('����� �����\������ ������ ���� 6.png');
image5.Picture.LoadFromFile('����� �����\������ ���� ���� 6.png');
image6.Picture.LoadFromFile('����� �����\������ ����� ���� 6.png');
image7.Picture.LoadFromFile('����� �����\����� ����6.png');
image8.Picture.LoadFromFile('����� �����\��������� ����6.png');
planets2.image2.Picture.LoadFromFile('����� �����\�������6.png');
end;

procedure TPLANETS.N2Click(Sender: TObject);
begin
if n=6 then image4.Enabled:=false;
if n>1 then image6.Enabled:=true;
if n<6 then image4.Enabled:=true;
if n=1 then image6.Enabled:=false; n:=2;
memo2.Lines.loadfromfile('�����\2.txt');
image2.Picture.LoadFromFile('����� �����\���������2.png');
image3.Picture.LoadFromFile('����� �����\����2.png');
image1.Picture.LoadFromFile('����� �����\�������2.png');
image4.Picture.LoadFromFile('����� �����\������ ������ ���� 2.png');
image5.Picture.LoadFromFile('����� �����\������ ���� ���� 2.png');
image6.Picture.LoadFromFile('����� �����\������ ����� ���� 2.png');
image7.Picture.LoadFromFile('����� �����\����� ����2.png');
image8.Picture.LoadFromFile('����� �����\��������� ����2.png');
planets2.image2.Picture.LoadFromFile('����� �����\�������2.png');
end;

procedure TPLANETS.N5Click(Sender: TObject);
begin
if n=6 then image4.Enabled:=false;
if n>1 then image6.Enabled:=true;
if n<6 then image4.Enabled:=true;
if n=1 then image6.Enabled:=false; n:=3;
memo2.Lines.loadfromfile('�����\3.txt');
image2.Picture.LoadFromFile('����� �����\���������3.png');
image3.Picture.LoadFromFile('����� �����\����3.png');
image1.Picture.LoadFromFile('����� �����\�������3.png');
image4.Picture.LoadFromFile('����� �����\������ ������ ���� 3.png');
image5.Picture.LoadFromFile('����� �����\������ ���� ���� 3.png');
image6.Picture.LoadFromFile('����� �����\������ ����� ���� 3.png');
image7.Picture.LoadFromFile('����� �����\����� ����3.png');
image8.Picture.LoadFromFile('����� �����\��������� ����3.png');
planets2.image2.Picture.LoadFromFile('����� �����\�������3.png');
end;

procedure TPLANETS.N6Click(Sender: TObject);
begin
if n=6 then image4.Enabled:=false;
if n>1 then image6.Enabled:=true;
if n<6 then image4.Enabled:=true;
if n=1 then image6.Enabled:=false; n:=4;
memo2.Lines.loadfromfile('�����\4.txt');
image2.Picture.LoadFromFile('����� �����\���������4.png');
image3.Picture.LoadFromFile('����� �����\����4.png');
image1.Picture.LoadFromFile('����� �����\�������4.png');
image4.Picture.LoadFromFile('����� �����\������ ������ ���� 4.png');
image5.Picture.LoadFromFile('����� �����\������ ���� ���� 4.png');
image6.Picture.LoadFromFile('����� �����\������ ����� ���� 4.png');
image7.Picture.LoadFromFile('����� �����\����� ����4.png');
image8.Picture.LoadFromFile('����� �����\��������� ����4.png');
planets2.image2.Picture.LoadFromFile('����� �����\�������4.png');
end;

procedure TPLANETS.N7Click(Sender: TObject);
begin
if n=6 then image4.Enabled:=false;
if n>1 then image6.Enabled:=true;
if n<6 then image4.Enabled:=true;
if n=1 then image6.Enabled:=false; n:=5;
memo2.Lines.loadfromfile('�����\5.txt');
image2.Picture.LoadFromFile('����� �����\���������5.png');
image3.Picture.LoadFromFile('����� �����\����5.png');
image1.Picture.LoadFromFile('����� �����\�������5.png');
image4.Picture.LoadFromFile('����� �����\������ ������ ���� 5.png');
image5.Picture.LoadFromFile('����� �����\������ ���� ���� 5.png');
image6.Picture.LoadFromFile('����� �����\������ ����� ���� 5.png');
image7.Picture.LoadFromFile('����� �����\����� ����5.png');
image8.Picture.LoadFromFile('����� �����\��������� ����5.png');
planets2.image2.Picture.LoadFromFile('����� �����\�������5.png');
end;

procedure TPLANETS.N8Click(Sender: TObject);
begin
planets.Hide;
planetsworld.showmodal;
end;

procedure TPLANETS.N9Click(Sender: TObject);
begin    planets.Hide;
form27.showmodal;
end;

procedure TPLANETS.Timer1Timer(Sender: TObject);
begin
timer2.Enabled:=true;
timer1.Enabled:=false;
end;

procedure TPLANETS.Timer2Timer(Sender: TObject);
begin
image10.visible:=true;
timer2.Enabled:=false;
end;
end.
