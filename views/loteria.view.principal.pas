unit loteria.view.principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.MultiView, FMX.Layouts,
  loteria.controller.principal, System.Actions, FMX.ActnList, System.ImageList,
  FMX.ImgList;

type
  TfrmPrincipal = class(TForm)
    laySidebar: TLayout;
    mvwSidebar: TMultiView;
    rectSidebar: TRectangle;
    btnLotofacil: TSpeedButton;
    layConteudo: TLayout;
    actlPrincipal: TActionList;
    actLotofacil: TAction;
    SpeedButton1: TSpeedButton;
    actSobre: TAction;
    imglPrincipal: TImageList;
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actLotofacilExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSobreExecute(Sender: TObject);
  private
    const
      MIN_HEIGHT = 650;
      MIN_WIDTH = 840;
    var
      FInterfaces: IControllerPrincipal;
      FFormAtivo: TForm;
    procedure SetInterfaces(const Value: IControllerPrincipal);
    procedure LimparFormulario;
  public
    property Interfaces: IControllerPrincipal read FInterfaces write SetInterfaces;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  loteria.model.principal, loteria.view.lotofacil, loteria.view.sobre;

{$R *.fmx}

procedure TfrmPrincipal.actLotofacilExecute(Sender: TObject);
begin
  if not(Self.FFormAtivo = nil) then
  begin
      if Self.FFormAtivo = frmLotofacil then
          Exit;
      Self.LimparFormulario;
  end;
  if not(Assigned(frmLotofacil)) then
      Application.CreateForm(TfrmLotofacil,frmLotofacil);
  Self.layConteudo.AddObject(frmLotofacil.layConteudoIndex);
  Self.FFormAtivo := frmLotofacil;
end;

procedure TfrmPrincipal.actSobreExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmSobre, frmSobre);
  {$IFDEF MSWINDOWS}
      frmSobre.ShowModal;
  {$ENDIF}
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Self.LimparFormulario;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  Self.Caption := Application.Title;
  Self.SetInterfaces(TModelPrincipal.New);
end;

procedure TfrmPrincipal.FormResize(Sender: TObject);
begin
  if Self.ClientHeight <> Self.MIN_HEIGHT then
      Self.ClientHeight := Self.MIN_HEIGHT;
  if Self.ClientWidth <> Self.MIN_WIDTH then
      Self.ClientWidth := Self.MIN_WIDTH;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  actLotofacil.Execute;
end;

procedure TfrmPrincipal.LimparFormulario;
begin
  {$IFDEF MSWINDOWS}
      if layConteudo.ChildrenCount >= 0 then
          for var I := layConteudo.ChildrenCount downto 0 do
              layConteudo.RemoveObject(Children[0]);
  {$ENDIF MSWINDOWS}
  if Assigned(frmLotofacil) then
      frmLotofacil.Free;
end;

procedure TfrmPrincipal.SetInterfaces(const Value: IControllerPrincipal);
begin
  FInterfaces := Value;
end;

end.
