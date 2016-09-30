program ImagemTry;

uses
  Vcl.Forms,
  Imagem in 'Imagem.pas' {frmImagem},
  data in 'data.pas' {DataModule2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmImagem, frmImagem);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
