unit Unit19;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TForm19 = class(TForm)
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
  Form19: TForm19;

implementation
              uses unit15,unit18;
{$R *.dfm}

procedure TForm19.FormCreate(Sender: TObject);
begin
       form19.Cursor:=1;
end;

procedure TForm19.Label1Click(Sender: TObject);
begin
unit15.a:=3;
form19.Close;
     form18.  Timer13.Enabled:=true;

end;

procedure TForm19.Label1MouseEnter(Sender: TObject);
begin
form19.Cursor:=2;
end;

procedure TForm19.Label1MouseLeave(Sender: TObject);
begin
form19.Cursor:=2;
end;

end.
