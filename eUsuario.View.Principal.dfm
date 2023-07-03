object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 432
  ClientWidth = 1131
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 8
    Top = 128
    Width = 1115
    Height = 288
    DataSource = BD
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object TesteConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=Teste')
    Connected = True
    LoginPrompt = False
    Left = 38
    Top = 23
  end
  object BD: TDataSource
    DataSet = Pessoas_enderecosTable
    Left = 112
    Top = 24
  end
  object Pessoas_enderecosTable: TFDQuery
    Active = True
    Connection = TesteConnection
    SQL.Strings = (
      'SELECT * FROM PESSOAS_ENDERECOS')
    Left = 199
    Top = 22
  end
end
