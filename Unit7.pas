unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm7 = class(TForm)
    Timer1: TTimer;
    Timer2: TTimer;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image5: TImage;
    Image4: TImage;
    Image6: TImage;
    Image7: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image8: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  fon1:TBitmap;
  korb1:TBitmap;
  x1,y1:Integer;
  shx1,shy1:integer;
implementation
   uses unit5;
{$R *.dfm}

procedure TForm7.FormActivate(Sender: TObject);
begin
image1.Align:=alClient;

shx1:=3;
shy1:=-3;
fon1:=TBitmap.Create;

fon1.loadfromfile('������������\fonchik.bmp');
korb1:=TBitmap.create;
korb1.LoadFromFile('������������\����� ���.bmp');
korb1.Transparent:=True;
Image1.Canvas.Draw(0,0,fon1);
image1.Align:=alclient;
image1.Canvas.Draw(80,355,korb1);
x1:=80 ;
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
application.Terminate;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
form7.Cursor:=1;
label1.Caption:='����������. � �����, ����� �����������'+#13#10+'���� � ����� ������� ���������� �'+#13#10+'������� ��� ���������� ��� �����������'+#13#10+'���������� � �������.'+#13#10+'������ �� ���������, �������, � ���� ��'+#13#10+'�������. � ��������������� � ���� ��'+#13#10+'�����.';
label2.Caption:='����� �����������. � - �������'+#13#10+'��������� � ����� ������� ��������, ��'+#13#10+'���������������� � ������� �����'+#13#10+'����������. �� ������� ���� ��������,'+#13#10+'��� ����� ��� � ����� ��������'+#13#10+'�����������, �� ���� �����������'+#13#10+'��� �������� ������.';
label3.Caption:='� ����� �������� ���� ����� �������,'+#13#10+'����������� ������������, ���������,'+#13#10+'�������, �����, �������� ������� �'+#13#10+'��� ����� �����.'+#13#10+'������ �� ������ ���������� �'+#13#10+'����������� � �������-�������'+#13#10+'�������� � ������� (� �� ������).';
label4.caption:='�� ����� ���� ���� ����� �������������'+#13#10+'� ������� ����������� �������. � �����'+#13#10+'�������� ����� ��������, �������'+#13#10+'����� ��������� ������� ����������'+#13#10+'������������� �� "������ � ����".'+#13#10+'��� ����������� � ������ � ����.';
end;
procedure TForm7.Image2Click(Sender: TObject);
begin
Timer1.Enabled:=true;
image2.Enabled:=false;
end;

procedure TForm7.Image2MouseEnter(Sender: TObject);
begin
form7.Cursor:=2;
end;

procedure TForm7.Image2MouseLeave(Sender: TObject);
begin
form7.Cursor:=1;
end;

procedure TForm7.Image3Click(Sender: TObject);
begin
  Timer2.enabled:=true;
end;

procedure TForm7.Image5Click(Sender: TObject);
begin
  Image5.visible:=False;
  label1.visible:=false;
  label2.visible:=true;
  image4.visible:=true;
end;

procedure TForm7.Image4Click(Sender: TObject);
begin
  label2.Visible:=false;
label3.visible:=True;
image4.visible:=False;
Image6.visible:=true;
end;

procedure TForm7.Image6Click(Sender: TObject);
begin
Label3.Visible:=false;
label4.visible:=true;
Image6.Visible:=false;
Image7.visible:=true;
end;

procedure TForm7.Image7Click(Sender: TObject);
begin
Form7.hide;
form5.show;
end;

procedure TForm7.Timer1Timer(Sender: TObject);
begin
Image2.Visible:=false;
x1:=x1+shx1;
if x1>750 then shx1:=shx1*(-1);
if x1<0 then shx1:=shx1*(-1);
Image1.Canvas.Draw(0,0,fon1);
Image1.Canvas.Draw(x1,355,korb1);
if x1>750 then   begin
  timer1.enabled:=false;
image3.visible := true;
y1:=355;
end;
end;

procedure TForm7.Timer2Timer(Sender: TObject);
begin
image3.Visible:=false;
y1:=y1+shy1;
if y1<0 then  shy1:=shy1*(-1);
Image1.Canvas.Draw(0,0,fon1);
Image1.Canvas.Draw(750,y1,korb1);
if y1<85 then
begin
Timer2.Enabled := False;
fon1.loadfromfile('������������\fonchik2.bmp');
Image1.Canvas.Draw(0,0,fon1);
image1.Canvas.Draw(750,85,korb1);
Label1.Visible:=True;
Image5.visible:=true;
          end;
end;

end.
