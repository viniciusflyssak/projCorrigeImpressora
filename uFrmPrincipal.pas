unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, ShellApi;

type
  TfrmPrincipal = class(TForm)
    btnReiniciar: TSpeedButton;
    procedure btnReiniciarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnReiniciarClick(Sender: TObject);
begin
  ExtractFilePath(Application.ExeName);
  ShellExecute(Handle, 'runas', 'reiniciar.bat', nil, 'ExtractFilePath(Application.ExeName)\reiniciar.bat', SW_SHOWNORMAL);
//  ShowMessage('Serviço reiniciado!');
end;

end.
