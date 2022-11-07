unit Unit27;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.DateUtils, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TForm27 = class(TForm)
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    Image1: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Венера: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Image10MouseEnter(Sender: TObject);
    procedure Image10MouseLeave(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form27: TForm27;
  T: TDateTime;
  Start, Stop: TDateTime;
  Elapsed: int64;
implementation
       uses unit8,unit25;
{$R *.dfm}

procedure herewegoagain;
begin
with form27 do begin
 label16.visible:=true;
 label14.visible:=false;
 label12.visible:=false;
 label13.visible:=false;
 image11.Visible:=false;
 венера.Caption:='Венера';
 label1.Caption:='Земля';
 label2.Caption:='Марс';
 label3.Caption:='Меркурий';
 label4.Caption:='Нептун';
 label5.Caption:='Сатурн';
 label6.Caption:='Уран';
 label7.Caption:='Юпитер';
 image1.Picture.LoadFromFile('Новая папка\2.png');
 image2.Picture.LoadFromFile('Новая папка\3.png');
 image3.Picture.LoadFromFile('Новая папка\8.png');
 image4.Picture.LoadFromFile('Новая папка\9.png');
 image5.Picture.LoadFromFile('Новая папка\5.png');
 image6.Picture.LoadFromFile('Новая папка\4.png');
 image7.Picture.LoadFromFile('Новая папка\6.png');
 image8.Picture.LoadFromFile('Новая папка\7.png');
 label8.Enabled:=true;
  combobox1.enabled:=true;
  combobox2.enabled:=true;
  combobox3.enabled:=true;
  combobox4.enabled:=true;
  combobox5.enabled:=true;
  combobox6.enabled:=true;
  combobox7.enabled:=true;
  combobox8.enabled:=true;
 combobox1.Text:='';
 combobox2.Text:='';
  combobox3.Text:='';
 combobox4.Text:='';
  combobox5.Text:='';
 combobox6.Text:='';
  combobox7.Text:='';
 combobox8.Text:='';           combobox1.ItemIndex:=-1;
   combobox2.ItemIndex:=-1;
    combobox3.ItemIndex:=-1;
     combobox4.ItemIndex:=-1;
      combobox5.ItemIndex:=-1;
       combobox6.ItemIndex:=-1;
        combobox7.ItemIndex:=-1;
         combobox8.ItemIndex:=-1;
end; end;
procedure TForm27.FormActivate(Sender: TObject);
begin
 T:=Time;
Start:=Now;
   herewegoagain;
end;

procedure TForm27.FormClose(Sender: TObject; var Action: TCloseAction);
begin
planets2.Show;
planets.show;
end;

procedure TForm27.FormCreate(Sender: TObject);
begin
combobox1.Cursor:=2;
combobox2.Cursor:=2;
combobox3.Cursor:=2;
combobox4.Cursor:=2;
combobox5.Cursor:=2;
combobox6.Cursor:=2;
combobox7.Cursor:=2;
combobox8.Cursor:=2;
form27.Cursor:=1;  T:=Time;
end;

procedure TForm27.Image10MouseEnter(Sender: TObject);
begin
form27.Cursor:=2;
end;

procedure TForm27.Image10MouseLeave(Sender: TObject);
begin
form27.Cursor:=1;
end;

procedure TForm27.Image12Click(Sender: TObject);
begin
form27.Close;
end;

procedure TForm27.Label15Click(Sender: TObject);
begin
herewegoagain;
label15.Visible:=false;
end;

procedure TForm27.Label16Click(Sender: TObject);
begin
image11.Visible:=false;
label16.visible:=false;
label15.Visible:=true;
label8.Enabled:=false;
label13.Visible:=false;
 венера.Caption:='Юпитер';
 label1.Caption:='Сатурн';
 label2.Caption:='Уран';
 label3.Caption:='Нептун';
 label4.Caption:='Земля';
 label5.Caption:='Венера';
 label6.Caption:='Марс';
 label7.Caption:='Меркурий';
combobox1.Enabled:=false;
combobox1.Text:='Юпитер';
combobox2.Enabled:=false;
combobox2.Text:='Сатурн';
combobox3.Enabled:=false;
combobox3.Text:='Уран';
combobox4.Enabled:=false;
combobox4.Text:='Нептун';
combobox5.Enabled:=false;
combobox5.Text:='Земля';
combobox6.Enabled:=false;
combobox6.Text:='Венера';
combobox7.Enabled:=false;
combobox7.Text:='Марс';
combobox8.Enabled:=false;
combobox8.Text:='Меркурий';
  image1.Picture.LoadFromFile('Новая папка\7.png');
 image2.Picture.LoadFromFile('Новая папка\4.png');
 image3.Picture.LoadFromFile('Новая папка\6.png');
 image4.Picture.LoadFromFile('Новая папка\5.png');
 image5.Picture.LoadFromFile('Новая папка\3.png');
 image6.Picture.LoadFromFile('Новая папка\2.png');
 image7.Picture.LoadFromFile('Новая папка\8.png');
 image8.Picture.LoadFromFile('Новая папка\9.png');
end;

procedure TForm27.Label8Click(Sender: TObject);

var
  i, t: integer;
begin
if ((combobox1.ItemIndex=5) and (combobox2.ItemIndex=4) and
(combobox3.ItemIndex=6) and (combobox4.ItemIndex=7) and
(combobox5.ItemIndex=3) and (combobox6.ItemIndex=1) and
(combobox7.ItemIndex=2) and (combobox8.ItemIndex=0)) then
begin image11.Visible:=true; label12.Visible:=true;  label13.Visible:=false;
  label16.Visible:=false;
  Stop:=Now;  //засекли окончание выполнения операции
  Elapsed:=SecondsBetween(Start, Stop);//время в секундах
  label8.enabled:=false;      label14.Visible:=true; label15.Visible:=true;
  label14.caption:='Вы затратили '+inttostr(elapsed)+' секунд на расстановку планет';


end else
begin label13.Visible:=true; image11.Visible:=true; end;

end;


end.
