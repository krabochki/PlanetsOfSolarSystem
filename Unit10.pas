unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.pngimage, clipbrd,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TTHEORIES = class(TForm)
    MainMenu1: TMainMenu;
    N2: TMenuItem;
    SpaceRacers1: TMenuItem;
    N4: TMenuItem;
    Image2: TImage;
    Panel1: TPanel;
    Memo1: TMemo;
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Shape2: TShape;
    Label3: TLabel;
    N1: TMenuItem;
    IQ1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure SpaceRacers1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure IQ1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  THEORIES: TTHEORIES;
    int   : Integer;
  i     : Integer;
  AFile: TStrings;

implementation

{$R *.dfm}

uses Unit15, Unit23, Unit8;

procedure TTHEORIES.FormCreate(Sender: TObject);
begin
Panel1.Enabled := False;

theories.Cursor:=1;
  Screen.MenuFont.Name := 'Fifaks 1.0 dev1';
  Screen.MenuFont.size := 12;
end;

procedure TTHEORIES.IQ1Click(Sender: TObject);
begin
 unit8.m:=2;
form23.showmodal;
end;

procedure TTHEORIES.Label1Click(Sender: TObject);
begin
  int := Random(87);
 AFile := TStringList.Create;
 AFile.LoadFromFile('текст\fgf.txt');
 memo1.Clear;
 Memo1.Lines.Add(AFile.Strings[int]);
 AFile.Free;
end;

procedure TTHEORIES.Label3Click(Sender: TObject);
begin
TClipboard.Create;
 ClipBoard.SetTextBuf(memo1.Lines.GetText) ;
end;

procedure TTHEORIES.N1Click(Sender: TObject);
begin
theories.Close;
end;

procedure TTHEORIES.SpaceRacers1Click(Sender: TObject);
begin
theories.close;
spaceracersfirst.showmodal;
end;

end.
