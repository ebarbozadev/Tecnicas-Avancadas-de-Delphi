<<<<<<< HEAD
object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 319
  ClientWidth = 366
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 27
    Width = 36
    Height = 15
    Caption = 'Nome:'
  end
  object Label2: TLabel
    Left = 287
    Top = 27
    Width = 32
    Height = 15
    Caption = 'Idade:'
  end
  object StringGrid1: TStringGrid
    Tag = 2
    Left = 8
    Top = 88
    Width = 345
    Height = 120
    ColCount = 2
    FixedCols = 0
    RowCount = 201
    TabOrder = 0
    ColWidths = (
      64
      64)
    ColAligments = (
      1
      1)
  end
  object edtNome: TEdit
    Left = 50
    Top = 24
    Width = 121
    Height = 23
    TabOrder = 1
    Text = '4290283019'
  end
  object edtIdade: TEdit
    Left = 325
    Top = 24
    Width = 28
    Height = 23
    TabOrder = 2
    Text = '-33'
  end
  object NavigatorAdapterBindSource1: TBindNavigator
    Left = 8
    Top = 208
    Width = 340
    Height = 25
    DataSource = AdapterBindSource1
    Orientation = orHorizontal
    TabOrder = 3
  end
  object AdapterBindSource1: TAdapterBindSource
    AutoActivate = True
    OnCreateAdapter = AdapterBindSource1CreateAdapter
    Adapter = DataGeneratorAdapter1
    ScopeMappings = <>
    Left = 264
    Top = 248
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkGridToDataSourceAdapterBindSource1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = AdapterBindSource1
      GridControl = StringGrid1
      Columns = <>
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = AdapterBindSource1
      FieldName = 'Nome'
      Control = edtNome
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = AdapterBindSource1
      FieldName = 'Idade'
      Control = edtIdade
      Track = True
    end
  end
  object DataGeneratorAdapter1: TDataGeneratorAdapter
    FieldDefs = <
      item
        Name = 'Nome'
        FieldType = ftUInteger
        Generator = 'AlphaColors'
        ReadOnly = False
      end
      item
        Name = 'Idade'
        FieldType = ftInteger
        Generator = 'Integers'
        ReadOnly = False
      end>
    Active = True
    AutoPost = False
    Options = [loptAllowInsert, loptAllowDelete, loptAllowModify]
    Left = 136
    Top = 248
  end
end
=======
object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 19
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 152
    Top = 19
    Width = 29
    Height = 15
    Caption = 'Idade'
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 72
    Width = 444
    Height = 241
    TabOrder = 0
  end
  object edtNome: TEdit
    Left = 8
    Top = 40
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object edtIdade: TEdit
    Left = 152
    Top = 40
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object AdapterBindSource1: TAdapterBindSource
    AutoActivate = True
    ScopeMappings = <>
    Left = 424
    Top = 32
  end
end
>>>>>>> e569085b03d77a6071220260059459b3f617824c
