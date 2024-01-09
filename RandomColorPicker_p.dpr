program RandomColorPicker_p;

uses
  Forms,
  RandomColorPicker_u in 'RandomColorPicker_u.pas' {frmColorLabelPicker};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmColorLabelPicker, frmColorLabelPicker);
  Application.Run;
end.
