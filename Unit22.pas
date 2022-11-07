unit Unit22;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TForm22 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Timer1: TTimer;
    procedure Label1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1MouseEnter(Sender: TObject);
    procedure Label1MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form22: TForm22;
      xxx:integer;
implementation
               uses unit15,unit18, Unit20;
{$R *.dfm}

procedure TForm22.FormCreate(Sender: TObject);
begin
form22.Cursor:=1;
end;

procedure TForm22.Label1Click(Sender: TObject);
begin
timer1.Enabled:=true;
form22.Close;
spaceracersfirst.close;
form18.close;
xxx:=100;

end;

procedure TForm22.Label1MouseEnter(Sender: TObject);
begin
form22.Cursor:=2;
end;

procedure TForm22.Label1MouseLeave(Sender: TObject);
begin
form22.Cursor:=1;
end;

procedure TForm22.Timer1Timer(Sender: TObject);
begin
if xxx=100 then  begin timer1.Enabled:=false; form22.Close;  end;
end;

end.
