unit Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.Menus,
  Data.DB, Vcl.Grids, Vcl.DBGrids, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TFormClientes = class(TForm)
    ActionListClientes: TActionList;
    ActionSair: TAction;
    MainMenuClientes: TMainMenu;
    Sair: TMenuItem;
    PopupMenuClientes: TPopupMenu;
    Sair1: TMenuItem;
    ZQueryClientes: TZQuery;
    DataSourceClientes: TDataSource;
    DBGridClientes: TDBGrid;
    DBNavigatorClientes: TDBNavigator;
    ActionNovo: TAction;
    ActionAlterar: TAction;
    ActionExcluir: TAction;
    MainMenuClientesOperacoes: TMenuItem;
    Novo1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    PopUpMenuClientesItemOperacoes: TMenuItem;
    Novo2: TMenuItem;
    Alterar2: TMenuItem;
    Excluir2: TMenuItem;
    ZQueryClienteAction: TZQuery;
    procedure ActionSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ActionExcluirExecute(Sender: TObject);
    procedure ActionNovoExecute(Sender: TObject);
    procedure ActionAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientes: TFormClientes;

implementation

{$R *.dfm}

uses DataModule, Cliente;

procedure TFormClientes.ActionAlterarExecute(Sender: TObject);
begin
  if ZQueryClientes.RecordCount = 0 then
  begin
    ShowMessage('N�o h� registros');
    Exit;
  end;


  if FormCliente = Nil then
  begin
    Application.CreateForm(TFormCliente, FormCliente);
    FormCliente.EditId.Text := ZQueryClientes.FieldByName('ID').AsString;
    FormCliente.EditNome.Text := ZQueryClientes.FieldByName('NOME').AsString;
    FormCliente.EditCpf.Text := ZQueryClientes.FieldByName('CPF').AsString;
    if ZQueryClientes.FieldByName('SEXO').AsString = 'MASCULINO' then
    begin
      FormCliente.RadioButtonMasculino.Checked := True;
      FormCliente.RadioButtonFeminino.Checked := False;
    end
    else
    begin
      FormCliente.RadioButtonMasculino.Checked := False;
      FormCliente.RadioButtonFeminino.Checked := True;
    end;
    FormCliente.ComboBoxEstadoCivil.Text := ZQueryClientes.FieldByName('ESTADOCIVIL').AsString;;
    FormCliente.ShowModal;
  end;
  ZQueryClientes.Refresh;
end;

procedure TFormClientes.ActionExcluirExecute(Sender: TObject);
var ComandoDelete:String;
begin
    if ZQueryClientes.RecordCount = 0 then
    begin
      ShowMessage('N�o h� mais clientes');
      Exit;
    end;
    ZQueryClienteAction.Close;
    ZQueryClienteAction.SQL.Clear;
    ComandoDelete := 'Delete From cliente Where (ID='+ZQueryClientes.FieldByName('ID').AsString+')';
    ZQueryClienteAction.SQL.Add(ComandoDelete);
    try
      ZQueryClienteAction.ExecSQL;
      ShowMessage('Comando:'+ #13 + ComandoDelete +#13+'executado com sucesso');
    except

       on E : Exception do
     begin
       ShowMessage('Erro em :'+ComandoDelete);
       ShowMessage('Exception class name = '+E.ClassName);
       ShowMessage('Exception message = '+E.Message);
     end;
    end;
    ZQueryClientes.Refresh;
end;

procedure TFormClientes.ActionNovoExecute(Sender: TObject);
begin
  if FormCliente = Nil then
  begin
    Application.CreateForm(TFormCliente, FormCliente);
    FormCliente.EditId.Text :='';
    FormCliente.EditNome.Text :='';
    FormCliente.EditCpf.Text :='';
    FormCliente.RadioButtonMasculino.Checked := True;
    FormCliente.RadioButtonFeminino.Checked := False;
    FormCliente.ComboBoxEstadoCivil.Text := '';
    FormCliente.ShowModal;
  end;
  ZQueryClientes.Refresh;
end;

procedure TFormClientes.ActionSairExecute(Sender: TObject);
begin
  FormClientes.Close;
end;

procedure TFormClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
    FormClientes := Nil;
end;

procedure TFormClientes.FormShow(Sender: TObject);
begin
  ZQueryClientes.Active := True;
end;

end.
