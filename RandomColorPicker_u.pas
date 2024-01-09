unit RandomColorPicker_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, CheckLst;

type
  TfrmColorLabelPicker = class(TForm)
    btnColorPicker: TButton;
    shpColorVisual: TShape;
    pgcMain: TPageControl;
    tsColorPicker: TTabSheet;
    tsChooseColors: TTabSheet;
    chklstColorOptions: TCheckListBox;
    bmbColorListRefresh: TBitBtn;
    lblColorPickerHeader: TLabel;
    procedure btnColorPickerClick(Sender: TObject);
    procedure bmbColorListRefreshClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmColorLabelPicker: TfrmColorLabelPicker;
  arrChosenColors: array of string;

implementation

{$R *.dfm}

procedure TfrmColorLabelPicker.bmbColorListRefreshClick(Sender: TObject);
var
  I, iCheckedColors: Integer;
begin
  Finalize(arrChosenColors);
  SetLength(arrChosenColors, 0);
  iCheckedColors := 0;

  for I := 0 to chklstColorOptions.Count - 1 do
  begin
    if chklstColorOptions.Checked[I] = True then
    begin
      Inc(iCheckedColors);
    end;
  end;

  if iCheckedColors < 2 then
    ShowMessage('Insufficient colors selected.')
  else
  begin
    Finalize(arrChosenColors);
    SetLength(arrChosenColors, 0);

    for I := 0 to chklstColorOptions.Count - 1 do
    begin
      if chklstColorOptions.Checked[I] = True then
      begin
        SetLength(arrChosenColors, Length(arrChosenColors) + 1);
        arrChosenColors[ High(arrChosenColors)] :=
          (chklstColorOptions.Items[I]);
      end;
    end;
    ShowMessage('Colors added successfully.');
  end;
end;

procedure TfrmColorLabelPicker.btnColorPickerClick(Sender: TObject);
var
  iIndex: Integer;
  sColor: string;
  col: TColor;
begin
  if Length(arrChosenColors) > 0 then
  begin
    Randomize;
    iIndex := Random(Length(arrChosenColors) - 1);
    sColor := 'cl' + arrChosenColors[iIndex];
    col := StringToColor(sColor);

    shpColorVisual.Brush.Color := col;
  end
  else
    ShowMessage('No colors are selected.');

end;

procedure TfrmColorLabelPicker.FormActivate(Sender: TObject);
begin
pgcMain.ActivePage := tsChooseColors;
end;

end.
