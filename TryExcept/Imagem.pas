unit Imagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TfrmImagem = class(TForm)
    img1: TImage;
    sbtnCarregar: TSpeedButton;
    procedure sbtnCarregarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImagem: TfrmImagem;

implementation

{$R *.dfm}

procedure TfrmImagem.sbtnCarregarClick(Sender: TObject);
begin
  try
       img1.Picture.LoadFromFile('imagem2.jpg');
  except

      on E: Exception do
          showmessage('Erro ao carregar imagem: ' + E.ToString + E.ClassType.ClassName);

  end;
end;

end.
