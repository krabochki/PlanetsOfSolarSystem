unit Unit25;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.GIFImg,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  Tplanets2 = class(TForm)
    image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image9: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N17: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N18: TMenuItem;
    N3: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N4: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure image1MouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  planets2: Tplanets2;

implementation

{$R *.dfm}

procedure Tplanets2.FormCreate(Sender: TObject);
begin

planets2.Cursor:=1;
end;

procedure Tplanets2.image1MouseEnter(Sender: TObject);
begin
    planets2.Cursor:=1;
end;

end.
