unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    FontPlus: TButton;
    FontMinus: TButton;
    FontLabel: TLabel;
    Message: TButton;
    ButtonRed: TButton;
    ButtonYellow: TButton;
    ButtonGreen: TButton;
    ButtonDefault: TButton;
    ButtonPlus: TButton;
    ButtonMinus: TButton;
    ButtonRandomTP: TButton;
    ButtonBlack: TButton;
    MainButton: TButton;
    procedure ButtonRedClick(Sender: TObject);
    procedure ButtonYellowClick(Sender: TObject);
    procedure ButtonGreenClick(Sender: TObject);
    procedure ButtonDefaultClick(Sender: TObject);
    procedure ButtonPlusClick(Sender: TObject);
    procedure ButtonMinusClick(Sender: TObject);
    procedure ButtonRandomTPClick(Sender: TObject);
    procedure ButtonBlackClick(Sender: TObject);
    procedure FontMinusClick(Sender: TObject);
    procedure FontPlusClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure MainButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MessageClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Step: Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.MainButtonClick(Sender: TObject);
begin
     Form1.MainButton.Left:=Random(Form1.Width - Form1.MainButton.Width);
     Form1.MainButton.Top:=Random(Form1.Height - Form1.MainButton.Height);

     Step := Step + 1;

     if Step = 5 then begin
         Form1.MainButton.Width:=124;
         Form1.MainButton.Caption:='I say dont click me';
     end;

     if Step = 6 then begin
         Form1.MainButton.Width:=45;
         Form1.MainButton.Caption:='OK';
     end;

     if Step = 7 then begin
         ShowMessage('Bye');
         Application.Terminate();
     end;

end;

procedure TForm1.ButtonRedClick(Sender: TObject);
begin
     Form1.Color:=clRed;
end;

procedure TForm1.ButtonYellowClick(Sender: TObject);
begin
     Form1.Color:=clYellow;
end;

procedure TForm1.ButtonGreenClick(Sender: TObject);
begin
     Form1.Color:=clGreen;
end;

procedure TForm1.ButtonDefaultClick(Sender: TObject);
begin
     Form1.Color:=clDefault;
end;

procedure TForm1.ButtonPlusClick(Sender: TObject);
begin
     if Form1.Height < 500 then
     begin
          Form1.Height:=Form1.Height + 10;
     end else
          ShowMessage('Kuda ti letiw');
     Form1.Caption:='Height:' + IntToStr(Form1.Height);

end;


procedure TForm1.ButtonMinusClick(Sender: TObject);
begin
     if Form1.Height > 200 then
     begin
          Form1.Height:=Form1.Height - 10;
     end else
         ShowMessage('Kallanga');
     Form1.Caption:='Height:' + IntToStr(Form1.Height);
end;

procedure TForm1.ButtonRandomTPClick(Sender: TObject);
begin
     Form1.ButtonRandomTP.Left:=Random(Form1.Width - Form1.ButtonRandomTP.Width);
     Form1.ButtonRandomTP.Top:=Random(Form1.Height - Form1.ButtonRandomTP.Height);
end;

procedure TForm1.ButtonBlackClick(Sender: TObject);
begin
     Form1.Color:= clBlack;
end;

procedure TForm1.FontMinusClick(Sender: TObject);
begin
     FontLabel.Font.Size := FontLabel.Font.Size - 5;
     FontLabel.Caption := IntToStr(FontLabel.Font.Size);
end;

procedure TForm1.FontPlusClick(Sender: TObject);
begin
     FontLabel.Font.Size := FontLabel.Font.Size + 5;
     FontLabel.Caption := IntToStr(FontLabel.Font.Size);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
     Step := 0;
end;

procedure TForm1.MessageClick(Sender: TObject);
begin
  ShowMessage('Hey');
end;

end.

