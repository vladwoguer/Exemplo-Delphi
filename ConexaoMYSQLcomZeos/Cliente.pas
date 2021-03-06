unit Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Actions,
  Vcl.ActnList, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  DataModule;

type
  TFormCliente = class(TForm)
    LabelId: TLabel;
    LabelNome: TLabel;
    LabelCpf: TLabel;
    LabelEstadoCivil: TLabel;
    EditId: TEdit;
    EditNome: TEdit;
    EditCpf: TEdit;
    GroupBoxSexo: TGroupBox;
    ComboBoxEstadoCivil: TComboBox;
    RadioButtonMasculino: TRadioButton;
    RadioButtonFeminino: TRadioButton;
    ButtonSalvar: TButton;
    ButtonCancelar: TButton;
    ActionListCliente: TActionList;
    ActionSalvarCliente: TAction;
    ActionCancelarCliente: TAction;
    ZQueryCliente: TZQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActionCancelarClienteExecute(Sender: TObject);
    procedure ActionSalvarClienteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCliente: TFormCliente;

implementation

{$R *.dfm}


procedure TFormCliente.ActionCancelarClienteExecute(Sender: TObject);
begin
  FormCliente.Close

end;

procedure TFormCliente.ActionSalvarClienteExecute(Sender: TObject);
var ComandoDML, Sexo:string;
begin
  if RadioButtonMasculino.Checked=True then
    Sexo:='MASCULINO'
  else
    Sexo:= 'FEMININO';
  if EditId.Text = '' then
    ComandoDML := 'Insert into cliente(NOME, CPF, SEXO, ESTADOCIVIL) Values '+
        '('+QuotedStr(EditNome.Text)+','+QuotedStr(EditCpf.Text)+','+QuotedStr(Sexo)+','+QuotedStr(ComboBoxEstadoCivil.Text)+');'
  else
    ComandoDML := 'Update cliente '+
        'Set NOME='+QuotedStr(EditNome.Text)+', CPF='+QuotedStr(EditCpf.Text)+', SEXO='+QuotedStr(Sexo)+', ESTADOCIVIL='+QuotedStr(ComboBoxEstadoCivil.Text)+'WHERE ID='+EditId.Text+';';

  ZQueryCliente.Close;
  ZQueryCliente.SQL.Clear;
  ZQueryCliente.SQL.Add(ComandoDML);
  try
    ZQueryCliente.ExecSQL;
    ShowMessage('Registro inserido com sucesso');
    ActionCancelarCliente.Execute;
  except
    ShowMessage('Erro ao inserir registro');
  end;


end;

procedure TFormCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
  FormCliente:=Nil;
end;

end.
