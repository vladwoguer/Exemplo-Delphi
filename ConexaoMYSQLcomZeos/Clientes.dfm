object FormClientes: TFormClientes
  Left = 0
  Top = 0
  Caption = 'FormClientes'
  ClientHeight = 296
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
  OnShow = FormShow
  DesignSize = (
    523
    296)
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
  object DBNavigatorClientes: TDBNavigator
    Left = 48
    Top = 160
    Width = 225
    Height = 25
    DataSource = DataSourceClientes
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    TabOrder = 1
  end
  object ActionListClientes: TActionList
    Left = 472
    Top = 248
    object ActionSair: TAction
      Caption = 'Sair'
      ShortCut = 27
      OnExecute = ActionSairExecute
    end
    object ActionNovo: TAction
      Caption = 'Novo'
      HelpType = htContext
      ShortCut = 45
      OnExecute = ActionNovoExecute
    end
    object ActionAlterar: TAction
      Caption = 'Alterar'
      ShortCut = 13
      OnExecute = ActionAlterarExecute
    end
    object ActionExcluir: TAction
      Caption = 'Excluir'
      ShortCut = 46
      OnExecute = ActionExcluirExecute
    end
  end
  object MainMenuClientes: TMainMenu
    Left = 72
    Top = 248
    object MainMenuClientesOperacoes: TMenuItem
      Caption = 'Opera'#231#245'es'
      object Novo1: TMenuItem
        Action = ActionNovo
      end
      object Alterar1: TMenuItem
        Action = ActionAlterar
      end
      object Excluir1: TMenuItem
        Action = ActionExcluir
      end
    end
    object Sair: TMenuItem
      Action = ActionSair
    end
  end
  object PopupMenuClientes: TPopupMenu
    Left = 176
    Top = 248
    object Sair1: TMenuItem
      Action = ActionSair
    end
    object PopUpMenuClientesItemOperacoes: TMenuItem
      Caption = 'Opera'#231#245'es'
      object Novo2: TMenuItem
        Action = ActionNovo
      end
      object Alterar2: TMenuItem
        Action = ActionAlterar
      end
      object Excluir2: TMenuItem
        Action = ActionExcluir
      end
    end
  end
  object ZQueryClientes: TZQuery
    Connection = DModule.ZConnection
    SQL.Strings = (
      'Select ID,NOME,CPF,SEXO,ESTADOCIVIL From cliente Order By NOME;')
    Params = <>
    Left = 376
    Top = 248
  end
  object DataSourceClientes: TDataSource
    DataSet = ZQueryClientes
    Left = 288
    Top = 248
  end
  object ZQueryClienteAction: TZQuery
    Connection = DModule.ZConnection
    Params = <>
    Left = 376
    Top = 192
  end
end
