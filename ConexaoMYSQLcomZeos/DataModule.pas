unit DataModule;

interface

uses
  System.SysUtils, System.Classes, ZConnection, ZAbstractConnection;

type
  TDModule = class(TDataModule)
    ZConnection: TZConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DModule: TDModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
