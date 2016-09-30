unit Zeos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.Menus;

type
  TFormPrincipal = class(TForm)
    ActionList1: TActionList;
    ActionSair: TAction;
    MainMenu: TMainMenu;
    MainMenuSair: TMenuItem;
    PopupMenu: TPopupMenu;
    ItemPopup: TMenuItem;
    acaoCientes: TAction;
    Clientes1: TMenuItem;
    procedure ActionSairExecute(Sender: TObject);
    procedure acaoCientesExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses DataModule, Clientes;

procedure TFormPrincipal.acaoCientesExecute(Sender: TObject);
begin
  if FormClientes = nil then
      Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
end;

procedure TFormPrincipal.ActionSairExecute(Sender: TObject);
begin
    if Application.MessageBox('Sair', 'Deseja realmente Sair?', MB_ICONQUESTION + MB_YESNO) = ID_YES then
    begin
         Application.Terminate;
    end;

end;

end.
