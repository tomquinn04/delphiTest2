object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Test App'
  ClientHeight = 613
  ClientWidth = 830
  Color = cl3DLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 110
  TextHeight = 14
  object Label1: TLabel
    Left = 584
    Top = 40
    Width = 35
    Height = 14
    Caption = 'Label1'
  end
  object DBGrid1: TDBGrid
    Left = 72
    Top = 80
    Width = 473
    Height = 369
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 608
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 1
    OnClick = Button1Click
  end
  object LabeledEdit1: TLabeledEdit
    Left = 72
    Top = 32
    Width = 473
    Height = 22
    EditLabel.Width = 49
    EditLabel.Height = 14
    EditLabel.Caption = 'Search...'
    TabOrder = 2
    OnChange = LabeledEdit1Change
  end
  object LabeledEdit2: TLabeledEdit
    Left = 608
    Top = 260
    Width = 214
    Height = 22
    EditLabel.Width = 69
    EditLabel.Height = 14
    EditLabel.Caption = 'Add a row...'
    TabOrder = 3
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=mysqltest'
      'User_Name=testuser'
      'Password=pAssw0rd!'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    Left = 56
    Top = 504
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM table1;')
    Left = 136
    Top = 504
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 208
    Top = 504
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 288
    Top = 504
  end
end
