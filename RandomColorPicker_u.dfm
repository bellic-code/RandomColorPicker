object frmColorLabelPicker: TfrmColorLabelPicker
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Random Color Picker'
  ClientHeight = 217
  ClientWidth = 392
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  GlassFrame.Enabled = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object pgcMain: TPageControl
    Left = 0
    Top = 0
    Width = 393
    Height = 217
    ActivePage = tsColorPicker
    TabOrder = 0
    object tsColorPicker: TTabSheet
      Caption = 'Color Picker'
      OnShow = tsColorPickerShow
      object shpColorVisual: TShape
        Left = 3
        Top = 3
        Width = 374
        Height = 152
        Shape = stRoundRect
      end
      object btnColorPicker: TButton
        Left = 3
        Top = 161
        Width = 75
        Height = 25
        Caption = 'Pick Color'
        TabOrder = 0
        OnClick = btnColorPickerClick
      end
    end
    object tsChooseColors: TTabSheet
      Caption = 'Choose Colors'
      ImageIndex = 1
      object lblColorPickerHeader: TLabel
        Left = 6
        Top = 1
        Width = 80
        Height = 13
        Caption = 'All Delphi Colors:'
      end
      object chklstColorOptions: TCheckListBox
        Left = 3
        Top = 16
        Width = 369
        Height = 139
        Columns = 2
        ItemHeight = 13
        Items.Strings = (
          'Aqua'
          'Black'
          'Blue'
          'Cream'
          'Fuchsia'
          'Gray'
          'Green'
          'Lime'
          'Maroon'
          'MedGray'
          'MoneyGreen'
          'Navy'#9
          'Olive'#9
          'Purple'#9
          'Red'
          'Silver'
          'SkyBlue'
          'Teal'
          'White'
          'Yellow')
        Sorted = True
        TabOrder = 0
      end
      object bmbColorListRefresh: TBitBtn
        Left = 3
        Top = 161
        Width = 86
        Height = 25
        Caption = 'Add'
        Default = True
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        ModalResult = 1
        NumGlyphs = 2
        TabOrder = 1
        OnClick = bmbColorListRefreshClick
      end
    end
  end
end
