unit Unit23;

interface

uses
  System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.Controls;

type
  TForm23 = class(TForm)
    rg2: TRadioGroup;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Shape1: TShape;
    Label3: TLabel;
    lbl1: TLabel;
    Shape2: TShape;
    Label4: TLabel;
    Image2: TImage;
    procedure Label3Click(Sender: TObject);
    procedure Label3MouseEnter(Sender: TObject);
    procedure Label3MouseLeave(Sender: TObject);
    procedure Shape1MouseEnter(Sender: TObject);
    procedure Shape1MouseLeave(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Label4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form23: TForm23;
  f:Text;
s:UTF8String;
Nvern,ball:integer;
implementation
         uses unit8;
{$R *.dfm}

procedure TForm23.FormActivate(Sender: TObject);

begin
form23.cursor:=1;
rg2.Enabled:=true;
label3.Enabled:=true;
if unit8.m=1 then  begin
assignfile(f,'test/variant1.txt');       image2.Picture.LoadFromFile('фотокарточки/2333.png');  image2.Visible:=true;     label2.Caption:='Как хорошо ты знаешь планеты земной группы?';  end;
if unit8.m=2 then  begin                            image2.Picture.LoadFromFile('фотокарточки/23.png');  image2.Visible:=true;
assignfile(f,'test/variant2.txt');          label2.Caption:='Какой твой космический IQ?'; end;
if unit8.m=6 then   begin
assignfile(f,'test/variant6.txt');          label2.Caption:='С нашей ли ты планеты?'; image2.Picture.LoadFromFile('фотокарточки/233.png');  image2.Visible:=true; end;
if unit8.m=3 then begin assignfile(f,'test/variant3.txt'); image2.Visible:=false;  label2.Caption:='А НЕ РЕПТИЛОИД ЛИ ТЫ?'; end;

reset(f);
readln(f,s);
ball:=0;
repeat
if (s[1]='-') then begin
delete(s,1,1);
rg2.Caption:=Utf8ToAnsi(s);
end
else if s[1]='*' then begin
delete(s,1,1);
Nvern:=StrToInt(s);
lbl1.Visible:=false;
end

else rg2.Items.Add(Utf8ToAnsi(s));
readln(f,s);
until (s[1]='-') or (Eof(f));
end;

procedure TForm23.Label3Click(Sender: TObject);

begin
if (rg2.ItemIndex>-1) and (not Eof(f)) then begin
if rg2.ItemIndex = Nvern-1 then ball:=ball+1; //Если выбранный вариант соответствует
rg2.Items.Clear; //номеру верного ответа то балл прибавляется
Repeat //и очищается поле для следующего вопроса
if (s[1]='-') then begin
delete(s,1,1);
rg2.Caption:=Utf8ToAnsi(s);
end
else if s[1]='*' then begin
delete(s,1,1);

Nvern:=StrToInt(s);

end

else rg2.Items.Add(Utf8ToAnsi(s));
readln(f,s);
until (s[1]='-') or (Eof(f));
end
//Если конец файла достигнут, значит вопросы закончились
Else if Eof(f) then begin
delete(s,1,1);
Nvern:=StrToInt(s);

if ((unit8.m=1) or (unit8.m=2)) then    begin
if rg2.ItemIndex = Nvern-1 then ball:=ball+1;
if ball>=18 then lbl1.Caption:='Результат: '+IntToStr(ball)+'/18. Да ты настоящий знаток!'
else if ball>=12 then lbl1.Caption:='Результат: '+IntToStr(ball)+'/18. Неплохо, но можно лучше!'
else if ball>=9 then lbl1.Caption:='Результат: '+IntToStr(ball)+'/18. Ещё немного почитать теорию, и будет супер.'
else if ball>=5 then lbl1.Caption:='Результат: '+IntToStr(ball)+'/18. Видимо, кто-то не читал теорию...'
else if ball>=0 then lbl1.Caption:='Результат: '+IntToStr(ball)+'/18. Ты что тут забыл вообще?';      end
else if (unit8.m=3)  then    begin
if rg2.ItemIndex = Nvern-1 then ball:=ball+1;
if ball>=18 then lbl1.Caption:=IntToStr(ball)+' из 18. Я вызываю РЕН ТВ, твои данные уже у меня. Ты сто процентный рептилоид'
else if ball>=12 then lbl1.Caption:=IntToStr(ball)+' из 18. Вероятнее всего ты рептилоид. Однако можешь оказаться просто чудаком'
else if ball>=9 then lbl1.Caption:=IntToStr(ball)+' из 18. Ты поддельный рептилоид: либо притворяешься, либо недоделанный'
else if ball>=5 then lbl1.Caption:=IntToStr(ball)+' из 18. Не думаю, что ты связан с рептилоидами, разве что с жидомассонами...'
else if ball>=0 then lbl1.Caption:=IntToStr(ball)+' из 18. Ты не рептилоид. Ну и слава Богу';      end
else if (unit8.m=6)  then   begin
if rg2.ItemIndex = Nvern-1 then ball:=ball+1;
 if ball>=18 then lbl1.Caption:=IntToStr(ball)+' из 18. Ты определенно не с нашей планеты, я бы даже сказала, не из нашей Вселенной'
else if ball>=12 then lbl1.Caption:=IntToStr(ball)+' из 18. Ты с какого-нибудь Марса или Венеры. Заехал погостить'
else if ball>=9 then lbl1.Caption:=IntToStr(ball)+' из 18. А вот не знаю. Но ставлю сто серебрянников на то, что ты инопланетяшка'
else if ball>=5 then lbl1.Caption:=IntToStr(ball)+' из 18. Тебя в роддоме просто уронили, а так ты с Земли'
else if ball>=0 then lbl1.Caption:=IntToStr(ball)+' из 18. Ты принадлежишь к человеческому роду';      end;

lbl1.visible:=true;//Вывод количества баллов
CloseFile(f);
label3.Enabled:=False; //кнопка становится недоступной в завершении проекта
end;
                     end;

procedure TForm23.Label3MouseEnter(Sender: TObject);
begin
form23.Cursor:=2;
end;

procedure TForm23.Label3MouseLeave(Sender: TObject);
begin
form23.Cursor:=1;
end;

procedure TForm23.Label4Click(Sender: TObject);
begin
form23.Close;
end;

procedure TForm23.Shape1MouseEnter(Sender: TObject);
begin
form23.Cursor:=2;
end;

procedure TForm23.Shape1MouseLeave(Sender: TObject);
begin
form23.Cursor:=1;
end;

end.
