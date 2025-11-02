unit loteria.controller.lotofacil;

interface

uses
  System.SysUtils, System.Generics.Collections;
type
  IControllerLotofacil = interface
    {$IFDEF MSWINDOWS}
        ['{8042C716-9AAA-4088-94A5-BE5AA8C1FC19}']
    {$ENDIF}
    function GetListaLotofacil: TList<Integer>;
    function GetListaLotofacil10: TList<Integer>;
    function GetListaLotofacil5A: TList<Integer>;
    function GetListaLotofacil5B: TList<Integer>;
    function GetListaLotofacil5C: TList<Integer>;
    function GetJogoCartela1: TList<Integer>;
    function GetJogoCartela2: TList<Integer>;
    function GetJogoCartela3: TList<Integer>;
    function GetJogoCartela4: TList<Integer>;
    function MostraLista10: string;
    function MostraLista5A: string;
    function MostraLista5B: string;
    function MostraLista5C: string;
    function CalculaValorTotalJogo(const ValorAposta: Double;
        NumeroJogos, Combinacoes: integer): Double;
    procedure IniciarLista;
    procedure InsereDeletaNumeroNaLista(const Value: integer);
    procedure CompletarAleatorio;
    procedure GerarJogos(const QuantidadeCartelas, NumerosPorCartela: integer);

    property ListaLotofacil25 : TList<Integer> read GetListaLotofacil;
    property ListaLotofacil10 : TList<Integer> read GetListaLotofacil10;
    property ListaLotofacil5A : TList<Integer> read GetListaLotofacil5A;
    property ListaLotofacil5B : TList<Integer> read GetListaLotofacil5B;
    property ListaLotofacil5C : TList<Integer> read GetListaLotofacil5C;
    property CartelaLotofacil01 : TList<Integer> read GetJogoCartela1;
    property CartelaLotofacil02 : TList<Integer> read GetJogoCartela2;
    property CartelaLotofacil03 : TList<Integer> read GetJogoCartela3;
    property CartelaLotofacil04 : TList<Integer> read GetJogoCartela4;
  end;

implementation

end.
