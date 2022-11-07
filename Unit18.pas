unit Unit18;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Menus;

type
  TForm18 = class(TForm)
    Block1: TImage;
    Block10: TImage;
    Block2: TImage;
    Block3: TImage;
    Block4: TImage;
    Block5: TImage;
    Block6: TImage;
    Block7: TImage;
    Block8: TImage;
    Block9: TImage;
    Button2: TButton;
    Button3: TButton;
    Car: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    Timer10: TTimer;
    Timer11: TTimer;
    Timer13: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    Timer5: TTimer;
    Timer6: TTimer;
    Timer7: TTimer;
    Timer8: TTimer;
    Image2: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Timer9: TTimer;
    Timer14: TTimer;
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure Timer7Timer(Sender: TObject);
    procedure Timer8Timer(Sender: TObject);
    procedure Timer9Timer(Sender: TObject);
    procedure Timer10Timer(Sender: TObject);
    procedure Timer11Timer(Sender: TObject);
    procedure Timer13Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Timer14Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form18: TForm18;
   bonus:integer;
implementation
 uses unit19, Unit15, Unit20, Unit21, Unit22;
{$R *.dfm}


procedure GameOver;
begin
 form18.Timer1.Enabled:=false;
 form18.Timer2.Enabled:=false;
 form18.Timer3.Enabled:=false;
 form18.Timer4.Enabled:=false;
 form18.Timer5.Enabled:=false;
 form18.Timer6.Enabled:=false;
 form18.Timer7.Enabled:=false;
 form18.Timer8.Enabled:=false;
 form18.Timer9.Enabled:=false;
 form18.Timer10.Enabled:=false;
 form18.Timer11.Enabled:=false;
 form18.Timer13.Enabled:=false;
 form20.showmodal;
end;
procedure GameWinLevel1;
begin

         form18.Timer1.Enabled:=false;
      form18.    Timer2.Enabled:=false;
     form18.     Timer3.Enabled:=false;
     form18.     Timer4.Enabled:=false;
      form18.    Timer5.Enabled:=false;
      form18.    Timer6.Enabled:=false;
       form18.   Timer7.Enabled:=false;
      form18.    Timer8.Enabled:=false;
      form18.    Timer9.Enabled:=false;
        form18.  Timer10.Enabled:=false;
       form18.timer13.enabled:=true;
        form19.Show;

 end;
 procedure GameWinLevel2;
begin

         form18.Timer1.Enabled:=false;
      form18.    Timer2.Enabled:=false;
     form18.     Timer3.Enabled:=false;
     form18.     Timer4.Enabled:=false;
      form18.    Timer5.Enabled:=false;
      form18.    Timer6.Enabled:=false;
       form18.   Timer7.Enabled:=false;
      form18.    Timer8.Enabled:=false;
      form18.    Timer9.Enabled:=false;
        form18.  Timer10.Enabled:=false;
        form21.Show;

 end;

  procedure GameWinLevel3;
begin

         form18.Timer1.Enabled:=false;
      form18.    Timer2.Enabled:=false;
     form18.     Timer3.Enabled:=false;
     form18.     Timer4.Enabled:=false;
      form18.    Timer5.Enabled:=false;
      form18.    Timer6.Enabled:=false;
       form18.   Timer7.Enabled:=false;
      form18.    Timer8.Enabled:=false;
      form18.    Timer9.Enabled:=false;
        form18.  Timer10.Enabled:=false;
        form22.show;
end;
procedure TForm18.Timer5Timer(Sender: TObject);
begin

 Label1.Caption:=IntToStr(Bonus);


  Block5.Top:=Block5.Top+(Block5.Height div 3);


 if (Block5.Top+Block5.Height)>(Car.Top) then
   if (Block5.Left+1<=Car.Left) and (Car.Left<=(Block5.Left+Block5.Width-1))
    then  GameOver;


 if (Block5.Top+Block5.Height)>(Car.Top) then
   if (Block5.Left+1<=(Car.Left+Car.Width)) and ((Car.Left+Car.Width)<=(Block5.Left+Block5.Width-1))
       then GameOver;



 If  Block5.Top+Block5.Height>=(form18.ClientHeight) then
 begin
        Bonus:=Bonus+10;
        Block5.Hide;
        Block5.Top:=1;


        repeat
          Block5.Left:=Random(770-Car.Width);
        until (Block5.Left>10);
        Block5.Show;
 end;

end;
procedure TForm18.Timer6Timer(Sender: TObject);
begin

 Label1.Caption:=IntToStr(Bonus);


  Block6.Top:=Block6.Top+(Block6.Height div 5);


 if (Block6.Top+Block6.Height)>(Car.Top) then
   if (Block6.Left+1<=Car.Left) and (Car.Left<=(Block6.Left+Block6.Width-1))
    then  GameOver;


 if (Block6.Top+Block6.Height)>(Car.Top) then
   if (Block6.Left+1<=(Car.Left+Car.Width)) and ((Car.Left+Car.Width)<=(Block6.Left+Block6.Width-1))
       then GameOver;



 If  Block6.Top+Block6.Height>=(form18.ClientHeight) then
 begin
        Bonus:=Bonus+10;
        Block6.Hide;
        Block6.Top:=1;


        repeat
          Block6.Left:=Random(770-Car.Width);
        until (Block6.Left>10);
        Block6.Show;
 end;
end;
procedure TForm18.Timer7Timer(Sender: TObject);
begin

 Label1.Caption:=IntToStr(Bonus);


  Block7.Top:=Block7.Top+(Block7.Height div 6);


 if (Block7.Top+Block7.Height)>(Car.Top) then
   if (Block7.Left+1<=Car.Left) and (Car.Left<=(Block7.Left+Block7.Width-1))
    then  GameOver;


 if (Block7.Top+Block7.Height)>(Car.Top) then
   if (Block7.Left+1<=(Car.Left+Car.Width)) and ((Car.Left+Car.Width)<=(Block7.Left+Block7.Width-1))
       then GameOver;



 If  Block7.Top+Block7.Height>=(form18.ClientHeight) then
 begin
        Bonus:=Bonus+10;
        Block7.Hide;
        Block7.Top:=1;


        repeat
          Block7.Left:=Random(770-Car.Width);
        until (Block7.Left>10);
        Block7.Show;
 end;


end;
procedure TForm18.Timer8Timer(Sender: TObject);
begin
 Label1.Caption:=IntToStr(Bonus);
  Block8.Top:=Block8.Top+(Block8.Height div 3);
 if (Block8.Top+Block8.Height)>(Car.Top) then
   if (Block8.Left+1<=Car.Left) and (Car.Left<=(Block8.Left+Block8.Width-1))
    then  GameOver;
 if (Block8.Top+Block8.Height)>(Car.Top) then
   if (Block8.Left+1<=(Car.Left+Car.Width)) and ((Car.Left+Car.Width)<=(Block8.Left+Block8.Width-1))
       then GameOver;
 If  Block8.Top+Block8.Height>=(form18.ClientHeight) then
 begin
        Bonus:=Bonus+10;
        Block8.Hide;
        Block8.Top:=1;


        repeat
          Block8.Left:=Random(770-Car.Width);
        until (Block8.Left>10);
        Block8.Show;
 end;
 end;

procedure TForm18.Timer9Timer(Sender: TObject);
begin

 Label1.Caption:=IntToStr(Bonus);


  Block9.Top:=Block9.Top+(Block9.Height div 4);


 if (Block9.Top+Block9.Height)>(Car.Top) then
   if (Block9.Left+1<=Car.Left) and (Car.Left<=(Block9.Left+Block9.Width-1))
    then  GameOver;


 if (Block9.Top+Block9.Height)>(Car.Top) then
   if (Block9.Left+1<=(Car.Left+Car.Width)) and ((Car.Left+Car.Width)<=(Block9.Left+Block9.Width-1))
       then GameOver;



 If  Block9.Top+Block9.Height>=(form18.ClientHeight) then
 begin
        Bonus:=Bonus+10;
        Block9.Hide;
        Block9.Top:=1;


        repeat
          Block9.Left:=Random(520-Car.Width);
        until (Block9.Left>10);
        Block9.Show;
 end;

end;
procedure TForm18.FormActivate(Sender: TObject);
begin
  Randomize;
if unit15.a=3 then
  begin  Timer13.Enabled:=true;
  Timer1.Enabled:=true;
         Timer2.Enabled:=true;
         Timer3.Enabled:=true;
         Timer4.Enabled:=true;
         Timer5.Enabled:=true;
         Timer6.Enabled:=true;
         Timer7.Enabled:=true;
         Timer8.Enabled:=true;
         Timer9.Enabled:=true;
         Timer10.Enabled:=true;
         Timer1.interval:=timer1.interval-80;
         Timer2.interval:=Timer2.interval-80;
         Timer3.interval:=Timer3.interval-80;
         Timer4.interval:=Timer4.interval-80;
          Timer5.interval:=Timer5.interval-80;
            Timer6.interval:=Timer6.interval-80;
              Timer7.interval:=Timer7.interval-80;
                Timer8.interval:=Timer8.interval-80;
                  Timer9.interval:=Timer9.interval-80;
                    Timer10.interval:=Timer10.interval-80 end

 else if unit15.a=1 then   begin
         timer1.Interval:= 360;
         timer2.Interval:= 450;
         timer3.Interval:= 300 ;
         timer4.Interval:= 600;
         timer5.Interval:= 315;
         timer6.Interval:= 330;
         timer7.Interval:= 420;
         timer8.Interval:=300 ;
         timer9.Interval:= 420;
         timer10.Interval:=360 ;
     Block1.Left:=128;
 Block1.Top:=-288;

 Block2.Left:=550;
 Block2.Top:=-216;

 Block3.Left:=32;
 Block3.Top:=-8;

 Block4.Left:=205;
 Block4.Top:=-32;

 Block5.Left:=650;
 Block5.Top:=-8;

 Block6.Left:=452;
 Block6.Top:=-112;

 Block7.Left:=104;
 Block7.Top:=-120;

 Block8.Left:=295;
 Block8.Top:=-176;

 Block9.Left:=312;
 Block9.Top:=-280;

 Block10.Left:=32;
 Block10.Top:=-240;

 Car.Left:=209;
 Car.Top:=580;

 Bonus:=0;

 Label1.Caption:='0';    Timer11.Enabled:=true;

 Block1.Show;
 Block2.Show;
 Block3.Show;
 Block4.Show;
 Block5.Show;
 Block6.Show;
 Block7.Show;
 Block8.Show;
 Block9.Show;
 Block10.Show;
 Car.Show;

 Timer1.Enabled:=true;
 Timer2.Enabled:=true;
 Timer3.Enabled:=true;
 Timer4.Enabled:=true;
 Timer5.Enabled:=true;
 Timer6.Enabled:=true;
 Timer7.Enabled:=true;
 Timer8.Enabled:=true;
 Timer9.Enabled:=true;
 Timer10.Enabled:=true; end else
  begin  Timer14.Enabled:=true;
  Timer1.Enabled:=true;
         Timer2.Enabled:=true;
         Timer3.Enabled:=true;
         Timer4.Enabled:=true;
         Timer5.Enabled:=true;
         Timer6.Enabled:=true;
         Timer7.Enabled:=true;
         Timer8.Enabled:=true;
         Timer9.Enabled:=true;
         Timer10.Enabled:=true;
         Timer1.interval:=timer1.interval-80;
         Timer2.interval:=Timer2.interval-80;
         Timer3.interval:=Timer3.interval-80;
         Timer4.interval:=Timer4.interval-80;
          Timer5.interval:=Timer5.interval-80;
            Timer6.interval:=Timer6.interval-80;
              Timer7.interval:=Timer7.interval-80;
                Timer8.interval:=Timer8.interval-80;
                  Timer9.interval:=Timer9.interval-80;
                    Timer10.interval:=Timer10.interval-80; end;




end;
procedure TForm18.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form18.Close;
  form18.Timer1.Enabled:=false;
 form18.Timer2.Enabled:=false;
 form18.Timer3.Enabled:=false;
 form18.Timer4.Enabled:=false;
 form18.Timer5.Enabled:=false;
 form18.Timer6.Enabled:=false;
 form18.Timer7.Enabled:=false;
 form18.Timer8.Enabled:=false;
 form18.Timer9.Enabled:=false;
 form18.Timer10.Enabled:=false;
 form18.Timer11.Enabled:=false;
 form18.Timer13.Enabled:=false;
 spaceracersfirst.Show;
end;

procedure TForm18.FormCreate(Sender: TObject);
begin
  Screen.MenuFont.Name := 'Fifaks 1.0 dev1'; //установка шрифта в меню формы
  Screen.MenuFont.size := 12; //установка размера шрифта в меню формы

end;
procedure TForm18.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 if (Key=37) and (Car.Left>20 ) then
    Car.Left:=Car.Left-(Car.Width div 4);

if (Key=39) and (Car.Left<(770-Car.Width)) then
    Car.Left:=Car.Left+(Car.Width div 4);
end;
procedure TForm18.FormMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

 If (Button=mbLeft) and (Car.Left>20) then
    Car.Left:=Car.Left-(Car.Width div 4);

 If (Button=mbRight) and (Car.Left<(770-Car.Width)) then
    Car.Left:=Car.Left+(Car.Width div 4);
end;

procedure TForm18.N1Click(Sender: TObject);
begin

 if n1.Caption='Пауза' then
 begin
         Timer1.Enabled:=false;
         Timer2.Enabled:=false;
         Timer3.Enabled:=false;
         Timer4.Enabled:=false;
         Timer5.Enabled:=false;
         Timer6.Enabled:=false;
         Timer7.Enabled:=false;
         Timer8.Enabled:=false;
         Timer9.Enabled:=false;
         Timer10.Enabled:=false;
         n1.Caption:='Вперёд';
         exit       end;
           if n1.Caption='Вперёд' then
 begin
         Timer1.Enabled:=true;
         Timer2.Enabled:=true;
         Timer3.Enabled:=true;
         Timer4.Enabled:=true;
         Timer5.Enabled:=true;
         Timer6.Enabled:=true;
         Timer7.Enabled:=true;
         Timer8.Enabled:=true;
         Timer9.Enabled:=true;
         Timer10.Enabled:=true;
         n1.Caption:='Пауза';
 end;
end;

procedure TForm18.N2Click(Sender: TObject);
begin
  form18.Timer1.Enabled:=false;
 form18.Timer2.Enabled:=false;
 form18.Timer3.Enabled:=false;
 form18.Timer4.Enabled:=false;
 form18.Timer5.Enabled:=false;
 form18.Timer6.Enabled:=false;
 form18.Timer7.Enabled:=false;
 form18.Timer8.Enabled:=false;
 form18.Timer9.Enabled:=false;
 form18.Timer10.Enabled:=false;
 form18.Timer11.Enabled:=false;
 form18.Timer13.Enabled:=false;
         timer1.Interval:= 360;
         timer2.Interval:= 450;
         timer3.Interval:= 300 ;
         timer4.Interval:= 600;
         timer5.Interval:= 315;
         timer6.Interval:= 330;
         timer7.Interval:= 420;
         timer8.Interval:=300 ;
         timer9.Interval:= 420;
         timer10.Interval:=360 ;
     Block1.Left:=128;
 Block1.Top:=-288;

 Block2.Left:=550;
 Block2.Top:=-216;

 Block3.Left:=32;
 Block3.Top:=-8;

 Block4.Left:=205;
 Block4.Top:=-32;

 Block5.Left:=650;
 Block5.Top:=-8;

 Block6.Left:=452;
 Block6.Top:=-112;

 Block7.Left:=104;
 Block7.Top:=-120;

 Block8.Left:=295;
 Block8.Top:=-176;

 Block9.Left:=312;
 Block9.Top:=-280;

 Block10.Left:=32;
 Block10.Top:=-240;

 Car.Left:=209;
 Car.Top:=580;

 Bonus:=0;

 Label1.Caption:='0';    Timer11.Enabled:=true;

 Block1.Show;
 Block2.Show;
 Block3.Show;
 Block4.Show;
 Block5.Show;
 Block6.Show;
 Block7.Show;
 Block8.Show;
 Block9.Show;
 Block10.Show;
 Car.Show;

 Timer1.Enabled:=true;
 Timer2.Enabled:=true;
 Timer3.Enabled:=true;
 Timer4.Enabled:=true;
 Timer5.Enabled:=true;
 Timer6.Enabled:=true;
 Timer7.Enabled:=true;
 Timer8.Enabled:=true;
 Timer9.Enabled:=true;
 Timer10.Enabled:=true;
  Timer11.Enabled:=true;

end;

procedure TForm18.N3Click(Sender: TObject);
begin
form18.Close;
end;

procedure TForm18.Timer10Timer(Sender: TObject);
begin

 Label1.Caption:=IntToStr(Bonus);


  Block10.Top:=Block10.Top+(Block10.Height div 5);


 if (Block10.Top+Block10.Height)>(Car.Top) then
   if (Block10.Left+1<=Car.Left) and (Car.Left<=(Block10.Left+Block10.Width-1))
    then  GameOver;


 if (Block10.Top+Block10.Height)>(Car.Top) then
   if (Block10.Left+1<=(Car.Left+Car.Width)) and ((Car.Left+Car.Width)<=(Block10.Left+Block10.Width-1))
       then GameOver;



 If  Block10.Top+Block10.Height>=(form18.ClientHeight) then
 begin
        Bonus:=Bonus+10;
        Block10.Hide;
        Block10.Top:=1;


        repeat
          Block10.Left:=Random(770-Car.Width);
        until (Block10.Left>10);
        Block10.Show;
 end;


end;
procedure TForm18.Timer11Timer(Sender: TObject);
begin

if bonus=200 then begin  timer11.Enabled:=false; gamewinlevel1; end;

end;

procedure TForm18.Timer13Timer(Sender: TObject);
begin
 if bonus=500 then begin  timer13.Enabled:=false; gamewinlevel2; end;

end;

procedure TForm18.Timer14Timer(Sender: TObject);
begin
   if bonus=800 then begin  timer14.Enabled:=false; gamewinlevel3; end;
end;

procedure TForm18.Timer1Timer(Sender: TObject);
begin

 Label1.Caption:=IntToStr(Bonus);


  Block1.Top:=Block1.Top+(Block1.Height div 2);


 if (Block1.Top+Block1.Height)>(Car.Top) then
   if (Block1.Left+1<=Car.Left) and (Car.Left<=(Block1.Left+Block1.Width-1))
    then  GameOver;


 if (Block1.Top+Block1.Height)>(Car.Top) then
   if (Block1.Left+1<=(Car.Left+Car.Width)) and ((Car.Left+Car.Width)<=(Block1.Left+Block1.Width-1))
       then GameOver;



 If  Block1.Top+Block1.Height>=(form18.ClientHeight) then
 begin
        Bonus:=Bonus+10;
        Block1.Hide;
        Block1.Top:=1;


        repeat
          Block1.Left:=Random(770-Car.Width);
        until (Block1.Left>10);
        Block1.Show;
 end;
end;
procedure TForm18.Timer2Timer(Sender: TObject);
begin

 Label1.Caption:=IntToStr(Bonus);


  Block2.Top:=Block2.Top+(Block2.Height div 3);


 if (Block2.Top+Block2.Height)>(Car.Top) then
   if (Block2.Left+1<=Car.Left) and (Car.Left<=(Block2.Left+Block2.Width-1))
    then GameOver;


 if (Block2.Top+Block2.Height)>(Car.Top) then
   if (Block2.Left+1<=(Car.Left+Car.Width)) and ((Car.Left+Car.Width)<=(Block2.Left+Block2.Width-1))
       then GameOver;



 If  Block2.Top+Block2.Height>=(form18.ClientHeight) then
 begin
        Bonus:=Bonus+10;
        Block2.Hide;
        Block2.Top:=1;


        repeat
          Block2.Left:=Random(770-Car.Width);
        until (Block2.Left>10);
        Block2.Show;
 end;
end;
procedure TForm18.Timer3Timer(Sender: TObject);
begin

 Label1.Caption:=IntToStr(Bonus);
  Block3.Top:=Block3.Top+(Block3.Height div 6);
 if (Block3.Top+Block3.Height)>(Car.Top) then
   if (Block3.Left+1<=Car.Left) and (Car.Left<=(Block3.Left+Block3.Width-1))
    then GameOver;
 if (Block3.Top+Block3.Height)>(Car.Top) then
   if (Block3.Left+1<=(Car.Left+Car.Width)) and ((Car.Left+Car.Width)<=(Block3.Left+Block3.Width-1))
       then GameOver;
 If  Block3.Top+Block3.Height>=(form18.ClientHeight) then
 begin
        Bonus:=Bonus+10;
        Block3.Hide;
        Block3.Top:=1;
        repeat
          Block3.Left:=Random(770-Car.Width);
        until (Block3.Left>10);
        Block3.Show;
 end;
end;
procedure TForm18.Timer4Timer(Sender: TObject);
begin
 Label1.Caption:=IntToStr(Bonus);
  Block4.Top:=Block4.Top+(Block4.Height div 3);
 if (Block4.Top+Block4.Height)>(Car.Top) then
   if (Block4.Left+1<=Car.Left) and (Car.Left<=(Block4.Left+Block4.Width-1))
    then  GameOver;
 if (Block4.Top+Block4.Height)>(Car.Top) then
   if (Block4.Left+1<=(Car.Left+Car.Width)) and ((Car.Left+Car.Width)<=(Block4.Left+Block4.Width-1))
       then GameOver;
 If  Block4.Top+Block4.Height>=(form18.ClientHeight) then
 begin
        Bonus:=Bonus+10;
        Block4.Hide;
        Block4.Top:=1;


        repeat
          Block4.Left:=Random(770-Car.Width);
        until (Block4.Left>10);
        Block4.Show;
 end;
  end;
end.
