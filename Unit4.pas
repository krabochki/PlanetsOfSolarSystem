unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage,shellapi;

type
  Tform4 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    star1: TImage;
    star2: TImage;
    star3: TImage;
    star4: TImage;
    star5: TImage;
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure star1Click(Sender: TObject);
    procedure star2Click(Sender: TObject);
    procedure star3Click(Sender: TObject);
    procedure star4Click(Sender: TObject);
    procedure star5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Image3MouseEnter(Sender: TObject);
    procedure Image3MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form4: Tform4;
  songstatement:integer;
  a:integer;

implementation

{$R *.dfm}

uses Unit1;

procedure Tform4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form4.Close;
form1.Image4.Visible:=false;
end;



procedure Tform4.FormCreate(Sender: TObject);
begin
form4.Cursor:=1;
end;

procedure Tform4.Image2Click(Sender: TObject);
begin
form4.Close;
form1.Image4.Visible:=false;
end;

procedure Tform4.Image2MouseEnter(Sender: TObject);
begin
form4.Cursor:=2;
end;

procedure Tform4.Image2MouseLeave(Sender: TObject);
begin
form4.Cursor:=1;
end;

procedure Tform4.Image3Click(Sender: TObject);
begin
  ShellExecute(handle, 'open', 'https://vk.com/nanananana_come_on', nil, nil, SW_SHOW);

end;

procedure Tform4.Image3MouseEnter(Sender: TObject);
begin
form4.Cursor:=2;
end;

procedure Tform4.Image3MouseLeave(Sender: TObject);
begin
form4.Cursor:=1;
end;

procedure Tform4.Image4Click(Sender: TObject);
begin
a:=3;
image5.Visible:=true;
image4.Visible:=false;
form1.mediaplayer1.stop;
end;

procedure Tform4.Image5Click(Sender: TObject);
begin
a:=2;
form1.MediaPlayer1.Play;
image4.Visible:=true;
image5.Visible:=false;
end;

procedure Tform4.Image6Click(Sender: TObject);
begin
  image7.Visible:=true;
  image6.Visible:=false;
  songstatement:=4;
end;

procedure Tform4.Image7Click(Sender: TObject);
begin
image8.Visible:=true;
image7.Visible:=false;
songstatement:=1;

end;

procedure Tform4.Image8Click(Sender: TObject);
begin
image8.Visible:=false;
image9.Visible:=true;
songstatement:=2;

end;

procedure Tform4.Image9Click(Sender: TObject);
begin
image9.Visible:=false;
image6.Visible:=true;
songstatement:=3;
end;

procedure Tform4.star1Click(Sender: TObject);
begin
star1.Picture.LoadFromFile('фотокарточки/звездаполн.png');
star5.Picture.LoadFromFile('фотокарточки/звезда.png');
star4.Picture.LoadFromFile('фотокарточки/звезда.png');
star3.Picture.LoadFromFile('фотокарточки/звезда.png');
star2.Picture.LoadFromFile('фотокарточки/звезда.png');

showmessage('Спасибо за ваше мнение!');
end;

procedure Tform4.star2Click(Sender: TObject);
begin
star2.Picture.LoadFromFile('фотокарточки/звездаполн.png');
star1.Picture.LoadFromFile('фотокарточки/звездаполн.png');
star5.Picture.LoadFromFile('фотокарточки/звезда.png');
star4.Picture.LoadFromFile('фотокарточки/звезда.png');
star3.Picture.LoadFromFile('фотокарточки/звезда.png');

showmessage('Жаль, что оценка низкая! Тем не менее, спасибо за ваше мнение!');
end;

procedure Tform4.star3Click(Sender: TObject);
begin
star2.Picture.LoadFromFile('фотокарточки/звездаполн.png');
star1.Picture.LoadFromFile('фотокарточки/звездаполн.png');
star3.Picture.LoadFromFile('фотокарточки/звездаполн.png');

star5.Picture.LoadFromFile('фотокарточки/звезда.png');
star4.Picture.LoadFromFile('фотокарточки/звезда.png');
showmessage('Спасибо за оценку!');
end;

procedure Tform4.star4Click(Sender: TObject);
begin
star2.Picture.LoadFromFile('фотокарточки/звездаполн.png');
star1.Picture.LoadFromFile('фотокарточки/звездаполн.png');
star3.Picture.LoadFromFile('фотокарточки/звездаполн.png');
star4.Picture.LoadFromFile('фотокарточки/звездаполн.png');

star5.Picture.LoadFromFile('фотокарточки/звезда.png');

showmessage('Спасибо за хорошую оценку!');
end;

procedure Tform4.star5Click(Sender: TObject);
begin
star5.Picture.LoadFromFile('фотокарточки/звездаполн.png');
star2.Picture.LoadFromFile('фотокарточки/звездаполн.png');
star1.Picture.LoadFromFile('фотокарточки/звездаполн.png');
star3.Picture.LoadFromFile('фотокарточки/звездаполн.png');
star4.Picture.LoadFromFile('фотокарточки/звездаполн.png');
showmessage('Спасибо за высокую оценку! Надеюсь не разочаровать вас!');

end;

end.
