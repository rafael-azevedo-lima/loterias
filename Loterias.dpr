program Loterias;

uses
  System.StartUpCopy,
  FMX.Forms,
  loteria.view.principal in 'views\loteria.view.principal.pas' {frmPrincipal},
  loteria.controller.principal in 'controllers\loteria.controller.principal.pas',
  loteria.model.principal in 'models\loteria.model.principal.pas',
  loteria.controller.lotofacil in 'controllers\loteria.controller.lotofacil.pas',
  loteria.model.lotofacil in 'models\loteria.model.lotofacil.pas',
  loteria.view.lotofacil in 'views\loteria.view.lotofacil.pas' {frmLotofacil},
  loteria.view.sobre in 'views\loteria.view.sobre.pas' {frmSobre};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Loterias - Gerador de Números.';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
