program ZeosProject;

uses
  Vcl.Forms,
  Zeos in 'Zeos.pas' {FormPrincipal},
  DataModule in 'DataModule.pas' {DModule: TDataModule},
  Clientes in 'Clientes.pas' {FormClientes},
  Cliente in 'Cliente.pas' {FormCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TDModule, DModule);
  Application.Run;
end.
