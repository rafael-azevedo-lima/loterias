unit loteria.model.principal;

interface

uses
  loteria.controller.principal, loteria.controller.lotofacil;

type
  TModelPrincipal = class(TInterfacedObject,IControllerPrincipal)
    private
      FLotofacil: IControllerLotofacil;
      constructor Create;
      function Lotofacil: IControllerLotofacil;
    public
      destructor Destroy; override;
      class function New: IControllerPrincipal;
  end;

implementation

uses
  loteria.model.lotofacil;

{ TModelPrincipal }

constructor TModelPrincipal.Create;
begin
end;

destructor TModelPrincipal.Destroy;
begin
  inherited;
end;

function TModelPrincipal.Lotofacil: IControllerLotofacil;
begin
  if not(Assigned(Self.FLotofacil)) then
      Self.FLotofacil := TModelLotofacil.New;
  Result := Self.FLotofacil;
end;

class function TModelPrincipal.New: IControllerPrincipal;
begin
  Result := Self.Create;
end;

end.
