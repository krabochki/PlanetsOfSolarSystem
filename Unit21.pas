unit Unit21;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TForm21 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    procedure Label1Click(Sender: TObject);
    procedure Label1MouseEnter(Sender: TObject);
    procedure Label1MouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form21: TForm21;

implementation
             uses unit18,unit15;
{$R *.dfm}

procedure TForm21.FormCreate(Sender: TObject);
begin
form21.Cursor:=1;
end;

procedure TForm21.Label1Click(Sender: TObject);
begin
unit15.a:=6;
form21.Close;
     form18.  Timer14.Enabled:=true;
end;
procedure TForm21.Label1MouseEnter(Sender: TObject);
begin
form21.Cursor:=2;
end;

procedure TForm21.Label1MouseLeave(Sender: TObject);
begin
form21.Cursor:=1;
end;

end.
