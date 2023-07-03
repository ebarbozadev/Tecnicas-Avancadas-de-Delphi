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
