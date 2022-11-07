program Project1dpr;



{$R 'hello.res' 'hello.rc'}

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form1},
  Unit3 in 'Unit3.pas' {Form1},
  Unit5 in 'Unit5.pas' {Form1},
  Unit6 in 'Unit6.pas' {Form1},
  Unit7 in 'Unit7.pas' {Form7},
  Unit4 in 'Unit4.pas' {form4},
  Unit8 in 'Unit8.pas' {PLANETS},
  Unit9 in 'Unit9.pas' {ALIENS},
  Unit10 in 'Unit10.pas' {THEORIES},
  Unit12 in 'Unit12.pas' {Form12},
  Unit11 in 'Unit11.pas' {AliensPuzzle},
  Unit16 in 'C:\резерв\Unit16.pas' {puzzleopen},
  Unit14 in 'Unit14.pas' {planetsworld},
  Unit13 in 'Unit13.pas' {Form13},
  Unit15 in 'Unit15.pas' {spaceracersfirst},
  Unit17 in 'Unit17.pas' {spaceracerssecond},
  Unit18 in 'Unit18.pas' {Form18},
  Unit19 in 'Unit19.pas' {Form19},
  Unit20 in 'Unit20.pas' {Form20},
  Unit21 in 'Unit21.pas' {Form21},
  Unit22 in 'Unit22.pas' {Form22},
  Unit25 in 'Unit25.pas' {planets2},
  Unit26 in 'Unit26.pas' {Form26},
  Unit27 in 'Unit27.pas' {Form27},
  Unit28 in 'Unit28.pas' {Form28},
  Unit23 in 'Unit23.pas' {Form23};

{$R *.res}

begin
  Application.Initialize;
    Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(Tform4, form4);
  Application.CreateForm(TPLANETS, PLANETS);
  Application.CreateForm(TALIENS, ALIENS);
  Application.CreateForm(TTHEORIES, THEORIES);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TAliensPuzzle, AliensPuzzle);
  Application.CreateForm(TPlanetsWorld, PlanetsWorld);
  Application.CreateForm(Tpuzzleopen, puzzleopen);
  Application.CreateForm(Tplanetsworld, planetsworld);
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(Tspaceracersfirst, spaceracersfirst);
  Application.CreateForm(Tspaceracerssecond, spaceracerssecond);
  Application.CreateForm(TForm18, Form18);
  Application.CreateForm(TForm19, Form19);
  Application.CreateForm(TForm20, Form20);
  Application.CreateForm(TForm21, Form21);
  Application.CreateForm(TForm22, Form22);
  Application.CreateForm(Tplanets2, planets2);
  Application.CreateForm(TForm26, Form26);
  Application.CreateForm(TForm27, Form27);
  Application.CreateForm(TForm28, Form28);
  Application.CreateForm(TForm23, Form23);
  Application.Run;
end.
