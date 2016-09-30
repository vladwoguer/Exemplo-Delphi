object FormClientes: TFormClientes
  Left = 0
  Top = 0
  Caption = 'FormClientes'
  ClientHeight = 201
  ClientWidth = 523
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenuClientes
  OldCreateOrder = False
  PopupMenu = PopupMenuClientes
  Position = poDesktopCenter
  OnClose = FormClose
  DesignSize = (
    523
    201)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridClientes: TDBGrid
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 515
    Height = 120
    Anchors = [akLeft, akTop, akRight]
    DataSource = DataSourceClientes
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ActionListClientes: TActionList
    Left = 464
    Top = 144
    object ActionSair: TAction
      Caption = 'Sair'
      ShortCut = 27
      OnExecute = ActionSairExecute
    end
  end
  object MainMenuClientes: TMainMenu
    Left = 64
    Top = 144
    object Sair: TMenuItem
      Action = ActionSair
    end
  end
  object PopupMenuClientes: TPopupMenu
    Left = 168
    Top = 144
    object Sair1: TMenuItem
      Action = ActionSair
    end
  end
  object ZQueryClientes: TZQuery
    Connection = DModule.ZConnection
    Active = True
    SQL.Strings = (
      'Select ID,NOME,CPF,SEXO,ESTADOCIVIL From cliente Order By NOME;')
    Params = <>
    Left = 368
    Top = 144
  end
  object DataSourceClientes: TDataSource
    DataSet = ZQueryClientes
    Left = 280
    Top = 144
  end
end
