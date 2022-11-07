unit Unit17;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  Tspaceracerssecond = class(TForm)
    Image1: TImage;
    Image2: TImage;
    procedure Image2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  spaceracerssecond: Tspaceracerssecond;

implementation
uses unit15;

{$R *.dfm}

procedure Tspaceracerssecond.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

spaceracersfirst.image6.Visible:=false;
end;

procedure Tspaceracerssecond.Image2Click(Sender: TObject);
begin
spaceracerssecond.close;
spaceracersfirst.image6.Visible:=false;
end;

end.
