unit loteria.controller.principal;

interface

uses
  loteria.controller.lotofacil;

type
  IControllerPrincipal = interface
    {$IFDEF MSWINDOWS}
        ['{BBDEC1B3-2846-46A5-9D3B-E1A323CC5586}']
    {$ENDIF}
    function Lotofacil: IControllerLotofacil;
  end;

implementation

end.
