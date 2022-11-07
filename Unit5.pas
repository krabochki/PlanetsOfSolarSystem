unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg, Vcl.Imaging.pngimage;

type
  TForm5 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Label1: TLabel;
    Image4: TImage;
    Image8: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Image9: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Image10: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure Image4MouseEnter(Sender: TObject);
    procedure Image4MouseLeave(Sender: TObject);
    procedure Image3MouseEnter(Sender: TObject);
    procedure Image3MouseLeave(Sender: TObject);
    procedure Image15MouseEnter(Sender: TObject);
    procedure Image15MouseLeave(Sender: TObject);
    procedure Image14MouseEnter(Sender: TObject);
    procedure Image14MouseLeave(Sender: TObject);
    procedure Image12MouseLeave(Sender: TObject);
    procedure Image12MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image13MouseEnter(Sender: TObject);
    procedure Image13MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit6;

{$R *.dfm}

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.terminate;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
form6.show;
Form5.Hide;
end;

procedure TForm5.Image4Click(Sender: TObject);
begin
Image1.Picture.LoadFromFile('������������\������4.bmp');
Image4.visible:=False;
label2.visible:=true;
Label1.Visible:=false;
Image8.visible:=true;
end;

procedure TForm5.Image4MouseEnter(Sender: TObject);
begin
form5.Cursor:=2;
end;

procedure TForm5.Image4MouseLeave(Sender: TObject);
begin
form5.Cursor:=1;
end;

procedure TForm5.Image8Click(Sender: TObject);
begin
Image1.Picture.LoadFromFile('������������\������3.bmp');
Image8.Visible:=false;
label3.Visible:=true;
Label2.visible:=false;
image9.visible:=true;
end;

procedure TForm5.Image9Click(Sender: TObject);
begin
Image1.Picture.LoadFromFile('������������\������2.bmp');
label3.visible:=false;
Image9.visible:=False;
Image13.visible:=true;
image5.Enabled:=true;
image6.Enabled:=true;
image7.Enabled:=true;
image3.Enabled:=true;
image14.Visible:=true;

end;

procedure TForm5.Image5Click(Sender: TObject);
begin
  Image11.Picture.LoadFromFile('������������\praktikani\��������.bmp');
  Image12.Visible:=True;
Image11.visible:=true;
Image10.visible:=False;
image1.Visible:=false;
Image5.visible:=false;
Image6.visible:=false;
Image7.visible:=false;
Image3.visible:=false;
   Image2.visible:=false;
   Image13.visible:=True;
     image13.Visible:=false;

          image14.Visible:=false;
image15.Visible:=false;
label4.Visible:=false;
label5.Visible:=false;

end;

procedure TForm5.Image7Click(Sender: TObject);
begin
  Image12.visible:=True;
    Image11.Picture.LoadFromFile('������������\praktikani\��������.bmp');
         Image12.visible:=True;
Image11.visible:=true;
Image10.visible:=False;
image1.Visible:=false;
Image5.visible:=false;
Image6.visible:=false;
Image7.visible:=false;
Image3.visible:=false;
   Image2.visible:=false;
     image13.Visible:=false;

          image14.Visible:=false;
image15.Visible:=false;
label4.Visible:=false;
label5.Visible:=false;
end;

procedure TForm5.Image3Click(Sender: TObject);
begin
  Image12.visible:=True;
    Image11.Picture.LoadFromFile('������������\praktikani\�������������.bmp');

Image11.visible:=true;
Image10.visible:=False;
image1.Visible:=false;
Image5.visible:=false;
Image6.visible:=false;
Image7.visible:=false;
Image3.visible:=false;
   Image2.visible:=false;
     image13.Visible:=false;

     image14.Visible:=false;
image15.Visible:=false;
label4.Visible:=false;
label5.Visible:=false;
end;

procedure TForm5.Image3MouseEnter(Sender: TObject);
begin
if image5.Enabled=true then   form5.Cursor:=2;
end;

procedure TForm5.Image3MouseLeave(Sender: TObject);
begin
form5.Cursor:=1;
end;

procedure TForm5.Image6Click(Sender: TObject);
begin
  Image12.visible:=True;
    Image11.Picture.LoadFromFile('������������\praktikani\����������.bmp');

Image11.visible:=true;
Image10.visible:=False;
image1.Visible:=false;
Image5.visible:=false;
Image6.visible:=false;
Image7.visible:=false;
Image3.visible:=false;
Image2.visible:=false;
image13.Visible:=false;
image14.Visible:=false;
image15.Visible:=false;
label4.Visible:=false;
label5.Visible:=false;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
form5.Cursor:=1;
image1.Picture.LoadFromFile('������������\������.bmp');
image2.Picture.LoadFromFile('������������\�����.bmp');
image3.Picture.LoadFromFile('������������\praktikani\1a.png');
image4.Picture.LoadFromFile('������������\������3333.bmp');
image5.Picture.LoadFromFile('������������\praktikani\������a.png');
image6.Picture.LoadFromFile('������������\praktikani\4.png');
image7.Picture.LoadFromFile('������������\praktikani\������.png');
image8.Picture.LoadFromFile('������������\������3333.bmp');
image9.Picture.LoadFromFile('������������\������33332.bmp');
image10.Picture.LoadFromFile('������������\������2.bmp');
image11.Picture.LoadFromFile('������������\������.bmp');
image12.Picture.LoadFromFile('������������\���� ������.bmp');
image13.Picture.LoadFromFile('������������\������3333.bmp');


Image14.Picture.LoadFromFile('������������\lampaoff.bmp');
Image15.Picture.LoadFromFile('������������\lampaon.bmp');
image1.Align:=alClient;
image14.Visible:=false;
label4.Caption:='����� �� ���������, �����'+#13#10+'������ ��� ���� ������';
label5.Caption:= '����� ������ ���������,'+#13#10+'������ �� ����� �����'
end;

procedure TForm5.Image12Click(Sender: TObject);
begin
  image1.visiblE:=True;
Image11.Visible:=false;
Image12.visible:=false;

Image10.visible:=true;
image1.Visible:=true;
Image5.visible:=true;
Image6.visible:=true;
Image7.visible:=true;
Image3.visible:=true;
Image2.visible:=true;
image13.visible:=true;
image14.Visible:=true;
end;

procedure TForm5.Image12MouseLeave(Sender: TObject);
begin
form5.Cursor:=2;
end;

procedure TForm5.Image12MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
form5.Cursor:=2;
end;

procedure TForm5.Image13Click(Sender: TObject);
begin
Form6.visible:=true;
form5.visible:=false;
end;

procedure TForm5.Image13MouseEnter(Sender: TObject);
begin
form5.Cursor:=2;
end;

procedure TForm5.Image13MouseLeave(Sender: TObject);
begin
form5.Cursor:=1;
end;

procedure TForm5.Image14Click(Sender: TObject);
begin
 image14.Visible:=false;
 image15.Visible:=true;
 label4.Visible:=true;
 label5.visible:=true;
end;

procedure TForm5.Image14MouseEnter(Sender: TObject);
begin
form5.Cursor:=4;
end;

procedure TForm5.Image14MouseLeave(Sender: TObject);
begin
form5.Cursor:=1;
end;

procedure TForm5.Image15Click(Sender: TObject);
begin
image14.Visible:=true;
image15.Visible:=false;
label4.Visible:=false;
label5.Visible:=false;
end;

procedure TForm5.Image15MouseEnter(Sender: TObject);
begin
form5.Cursor:=4;
end;

procedure TForm5.Image15MouseLeave(Sender: TObject);
begin
form5.Cursor:=1;
end;

end.
