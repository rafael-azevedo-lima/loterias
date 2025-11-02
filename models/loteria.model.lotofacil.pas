unit loteria.model.lotofacil;

interface

uses
  loteria.controller.lotofacil, System.SysUtils, System.Generics.Collections;

type
  TModelLotofacil = class(TInterfacedObject,IControllerLotofacil)
    private
      const
        COMBINA15 = 1;
        COMBINA16 = 16;
        COMBINA17 = 136;
        COMBINA18 = 816;
        COMBINA19 = 3876;
        COMBINA20 = 15504;
      var
        FLista25: TList<Integer>;
        FLista10: TList<Integer>;
        FLista5A: TList<Integer>;
        FLista5B: TList<Integer>;
        FLista5C: TList<Integer>;
        FListaCompleta1: TList<Integer>;
        FListaCompleta2: TList<Integer>;
        FListaCompleta3: TList<Integer>;
        FListaCompleta4: TList<Integer>;
      constructor Create;
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
    public
      destructor Destroy; override;
      class function New: IControllerLotofacil;

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

{ TModelLotofacil }

function TModelLotofacil.CalculaValorTotalJogo(const ValorAposta: Double;
  NumeroJogos, Combinacoes: integer): Double;
var
  Fator: Double;
begin
  case Combinacoes of
      15: Fator := COMBINA15;
      16: Fator := COMBINA16;
      17: Fator := COMBINA17;
      18: Fator := COMBINA18;
      19: Fator := COMBINA19;
      20: Fator := COMBINA20;
  else
      Fator := COMBINA15;
  end;
  Result := ValorAposta * NumeroJogos * Fator;
end;

procedure TModelLotofacil.CompletarAleatorio;
var
  Index: Integer;
begin
  while (Self.FLista10.Count < 10) do
  begin
      Index := Random(Self.FLista25.Count);
      Self.FLista10.Add(Self.FLista25[Index]);
      Self.FLista25.Delete(Index);
  end;
  while (Self.FLista5A.Count < 5) do
  begin
      Index := Random(Self.FLista25.Count);
      Self.FLista5A.Add(Self.FLista25[Index]);
      Self.FLista25.Delete(Index);
  end;
  while (Self.FLista5B.Count < 5) do
  begin
      Index := Random(Self.FLista25.Count);
      Self.FLista5B.Add(Self.FLista25[Index]);
      Self.FLista25.Delete(Index);
  end;
  while (Self.FLista5C.Count < 5) do
  begin
      Index := Random(Self.FLista25.Count);
      Self.FLista5C.Add(Self.FLista25[Index]);
      Self.FLista25.Delete(Index);
  end;
end;

constructor TModelLotofacil.Create;
begin
  Self.FLista25 := TList<Integer>.Create;
  Self.FLista10 := TList<Integer>.Create;
  Self.FLista5A := TList<Integer>.Create;
  Self.FLista5B := TList<Integer>.Create;
  Self.FLista5C := TList<Integer>.Create;
  Self.FListaCompleta1:= TList<Integer>.Create;
  Self.FListaCompleta2:= TList<Integer>.Create;
  Self.FListaCompleta3:= TList<Integer>.Create;
  Self.FListaCompleta4:= TList<Integer>.Create;
end;

procedure TModelLotofacil.InsereDeletaNumeroNaLista(const Value: integer);
var
  Posicao: integer;
begin
  if Self.FLista10.Count < 10 then
      Self.FLista10.Add(Value)
  else if Self.FLista5A.Count < 5 then
       Self.FLista5A.Add(Value)
  else if Self.FLista5B.Count < 5 then
       Self.FLista5B.Add(Value)
  else if Self.FLista5C.Count < 5 then
       Self.FLista5C.Add(Value);
  Posicao := Self.FLista25.IndexOf(Value);
  Self.FLista25.Delete(Posicao);
end;

function TModelLotofacil.MostraLista10: string;
var
  Lista: string;
  zeros: integer;
begin
  Lista := '[';
  if Self.FLista10.Count > 0 then
      {$IFDEF MSWINDOWS}
      for var i := 0 to Self.FLista10.Count -1 do
      begin
          zeros := Self.FLista10[i];
          Lista := Lista + FormatFloat('00',zeros);
          if (i < Self.FLista10.Count -1) then
              Lista := Lista + ', ';
      end;
      {$ENDIF MSWINDOWS}
  Lista := Lista + ']';
  Result := Lista;
end;

function TModelLotofacil.MostraLista5A: string;
var
  Lista: string;
  zeros: integer;
begin
  Lista := '[';
  if Self.FLista5A.Count > 0 then
      {$IFDEF MSWINDOWS}
      for var i := 0 to Self.FLista5A.Count -1 do
      begin
          zeros := Self.FLista5A[i];
          Lista := Lista + FormatFloat('00',zeros);
          if (i < Self.FLista5A.Count -1) then
              Lista := Lista + ', ';
      end;
      {$ENDIF MSWINDOWS}
  Lista := Lista + ']';
  Result := Lista;
end;

function TModelLotofacil.MostraLista5B: string;
var
  Lista: string;
  zeros: integer;
begin
  Lista := '[';
  if Self.FLista5B.Count > 0 then
      {$IFDEF MSWINDOWS}
      for var i := 0 to Self.FLista5B.Count -1 do
      begin
          zeros := Self.FLista5B[i];
          Lista := Lista + FormatFloat('00',zeros);
          if (i < Self.FLista5B.Count -1) then
              Lista := Lista + ', ';
      end;
      {$ENDIF MSWINDOWS}
  Lista := Lista + ']';
  Result := Lista;
end;

function TModelLotofacil.MostraLista5C: string;
var
  Lista: string;
  zeros: integer;
begin
  Lista := '[';
  if Self.FLista5C.Count > 0 then
      {$IFDEF MSWINDOWS}
      for var i := 0 to Self.FLista5C.Count -1 do
      begin
          zeros := Self.FLista5C[i];
          Lista := Lista + FormatFloat('00',zeros);
          if (i < Self.FLista5C.Count -1) then
              Lista := Lista + ', ';
      end;
      {$ENDIF MSWINDOWS}
  Lista := Lista + ']';
  Result := Lista;
end;

destructor TModelLotofacil.Destroy;
begin
  Self.FLista25.Free;
  Self.FLista10.Free;
  Self.FLista5A.Free;
  Self.FLista5B.Free;
  Self.FLista5C.Free;
  Self.FListaCompleta1.Free;
  Self.FListaCompleta2.Free;
  Self.FListaCompleta3.Free;
  Self.FListaCompleta4.Free;
  inherited;
end;

procedure TModelLotofacil.GerarJogos(const QuantidadeCartelas,
  NumerosPorCartela: integer);
begin
  Self.FListaCompleta1.Clear;
  Self.FListaCompleta2.Clear;
  Self.FListaCompleta3.Clear;
  Self.FListaCompleta4.Clear;
  case NumerosPorCartela of
      15:
      begin
          Self.FListaCompleta1.AddRange(Self.FLista10);
          Self.FListaCompleta1.AddRange(Self.FLista5A);
          Self.FListaCompleta2.AddRange(Self.FLista10);
          Self.FListaCompleta2.AddRange(Self.FLista5B);
          Self.FListaCompleta3.AddRange(Self.FLista10);
          Self.FListaCompleta3.AddRange(Self.FLista5C);
          Self.FListaCompleta4.AddRange(Self.FLista5A);
          Self.FListaCompleta4.AddRange(Self.FLista5B);
          Self.FListaCompleta4.AddRange(Self.FLista5C);
      end;
      16:
      begin
          Self.FListaCompleta1.AddRange(Self.FLista10);
          Self.FListaCompleta1.AddRange(Self.FLista5A);
          Self.FListaCompleta1.AddRange(Self.FLista5B[0]);
          Self.FListaCompleta2.AddRange(Self.FLista10);
          Self.FListaCompleta2.AddRange(Self.FLista5B);
          Self.FListaCompleta2.AddRange(Self.FLista5C[0]);
          Self.FListaCompleta3.AddRange(Self.FLista10);
          Self.FListaCompleta3.AddRange(Self.FLista5C);
          Self.FListaCompleta3.AddRange(Self.FLista5A[0]);
          Self.FListaCompleta4.AddRange(Self.FLista5A);
          Self.FListaCompleta4.AddRange(Self.FLista5B);
          Self.FListaCompleta4.AddRange(Self.FLista5C);
          Self.FListaCompleta4.AddRange(Self.FLista10[0]);
      end;
      17:
      begin
          Self.FListaCompleta1.AddRange(Self.FLista10);
          Self.FListaCompleta1.AddRange(Self.FLista5A);
          Self.FListaCompleta1.AddRange(Self.FLista5B[0]);
          Self.FListaCompleta1.AddRange(Self.FLista5B[1]);
          Self.FListaCompleta2.AddRange(Self.FLista10);
          Self.FListaCompleta2.AddRange(Self.FLista5B);
          Self.FListaCompleta2.AddRange(Self.FLista5C[0]);
          Self.FListaCompleta2.AddRange(Self.FLista5C[1]);
          Self.FListaCompleta3.AddRange(Self.FLista10);
          Self.FListaCompleta3.AddRange(Self.FLista5C);
          Self.FListaCompleta3.AddRange(Self.FLista5A[0]);
          Self.FListaCompleta3.AddRange(Self.FLista5A[1]);
          Self.FListaCompleta4.AddRange(Self.FLista5A);
          Self.FListaCompleta4.AddRange(Self.FLista5B);
          Self.FListaCompleta4.AddRange(Self.FLista5C);
          Self.FListaCompleta4.AddRange(Self.FLista10[0]);
          Self.FListaCompleta4.AddRange(Self.FLista10[1]);
      end;
      18:
      begin
          Self.FListaCompleta1.AddRange(Self.FLista10);
          Self.FListaCompleta1.AddRange(Self.FLista5A);
          Self.FListaCompleta1.AddRange(Self.FLista5B[0]);
          Self.FListaCompleta1.AddRange(Self.FLista5B[1]);
          Self.FListaCompleta1.AddRange(Self.FLista5B[2]);
          Self.FListaCompleta2.AddRange(Self.FLista10);
          Self.FListaCompleta2.AddRange(Self.FLista5B);
          Self.FListaCompleta2.AddRange(Self.FLista5C[0]);
          Self.FListaCompleta2.AddRange(Self.FLista5C[1]);
          Self.FListaCompleta2.AddRange(Self.FLista5C[2]);
          Self.FListaCompleta3.AddRange(Self.FLista10);
          Self.FListaCompleta3.AddRange(Self.FLista5C);
          Self.FListaCompleta3.AddRange(Self.FLista5A[0]);
          Self.FListaCompleta3.AddRange(Self.FLista5A[1]);
          Self.FListaCompleta3.AddRange(Self.FLista5A[2]);
          Self.FListaCompleta4.AddRange(Self.FLista5A);
          Self.FListaCompleta4.AddRange(Self.FLista5B);
          Self.FListaCompleta4.AddRange(Self.FLista5C);
          Self.FListaCompleta4.AddRange(Self.FLista10[0]);
          Self.FListaCompleta4.AddRange(Self.FLista10[1]);
          Self.FListaCompleta4.AddRange(Self.FLista10[2]);
      end;
      19:
      begin
          Self.FListaCompleta1.AddRange(Self.FLista10);
          Self.FListaCompleta1.AddRange(Self.FLista5A);
          Self.FListaCompleta1.AddRange(Self.FLista5B[0]);
          Self.FListaCompleta1.AddRange(Self.FLista5B[1]);
          Self.FListaCompleta1.AddRange(Self.FLista5B[2]);
          Self.FListaCompleta1.AddRange(Self.FLista5B[3]);
          Self.FListaCompleta2.AddRange(Self.FLista10);
          Self.FListaCompleta2.AddRange(Self.FLista5B);
          Self.FListaCompleta2.AddRange(Self.FLista5C[0]);
          Self.FListaCompleta2.AddRange(Self.FLista5C[1]);
          Self.FListaCompleta2.AddRange(Self.FLista5C[2]);
          Self.FListaCompleta2.AddRange(Self.FLista5C[3]);
          Self.FListaCompleta3.AddRange(Self.FLista10);
          Self.FListaCompleta3.AddRange(Self.FLista5C);
          Self.FListaCompleta3.AddRange(Self.FLista5A[0]);
          Self.FListaCompleta3.AddRange(Self.FLista5A[1]);
          Self.FListaCompleta3.AddRange(Self.FLista5A[2]);
          Self.FListaCompleta3.AddRange(Self.FLista5A[3]);
          Self.FListaCompleta4.AddRange(Self.FLista5A);
          Self.FListaCompleta4.AddRange(Self.FLista5B);
          Self.FListaCompleta4.AddRange(Self.FLista5C);
          Self.FListaCompleta4.AddRange(Self.FLista10[0]);
          Self.FListaCompleta4.AddRange(Self.FLista10[1]);
          Self.FListaCompleta4.AddRange(Self.FLista10[2]);
          Self.FListaCompleta4.AddRange(Self.FLista10[3]);
      end;
      20:
      begin
          Self.FListaCompleta1.AddRange(Self.FLista10);
          Self.FListaCompleta1.AddRange(Self.FLista5A);
          Self.FListaCompleta1.AddRange(Self.FLista5B[0]);
          Self.FListaCompleta1.AddRange(Self.FLista5B[1]);
          Self.FListaCompleta1.AddRange(Self.FLista5B[2]);
          Self.FListaCompleta1.AddRange(Self.FLista5B[3]);
          Self.FListaCompleta1.AddRange(Self.FLista5B[4]);
          Self.FListaCompleta2.AddRange(Self.FLista10);
          Self.FListaCompleta2.AddRange(Self.FLista5B);
          Self.FListaCompleta2.AddRange(Self.FLista5C[0]);
          Self.FListaCompleta2.AddRange(Self.FLista5C[1]);
          Self.FListaCompleta2.AddRange(Self.FLista5C[2]);
          Self.FListaCompleta2.AddRange(Self.FLista5C[3]);
          Self.FListaCompleta2.AddRange(Self.FLista5C[4]);
          Self.FListaCompleta3.AddRange(Self.FLista10);
          Self.FListaCompleta3.AddRange(Self.FLista5C);
          Self.FListaCompleta3.AddRange(Self.FLista5A[0]);
          Self.FListaCompleta3.AddRange(Self.FLista5A[1]);
          Self.FListaCompleta3.AddRange(Self.FLista5A[2]);
          Self.FListaCompleta3.AddRange(Self.FLista5A[3]);
          Self.FListaCompleta3.AddRange(Self.FLista5A[4]);
          Self.FListaCompleta4.AddRange(Self.FLista5A);
          Self.FListaCompleta4.AddRange(Self.FLista5B);
          Self.FListaCompleta4.AddRange(Self.FLista5C);
          Self.FListaCompleta4.AddRange(Self.FLista10[0]);
          Self.FListaCompleta4.AddRange(Self.FLista10[1]);
          Self.FListaCompleta4.AddRange(Self.FLista10[2]);
          Self.FListaCompleta4.AddRange(Self.FLista10[3]);
          Self.FListaCompleta4.AddRange(Self.FLista10[4]);
      end;
  end;
  Self.FListaCompleta1.Sort;
  Self.FListaCompleta2.Sort;
  Self.FListaCompleta3.Sort;
  Self.FListaCompleta4.Sort;
end;

function TModelLotofacil.GetJogoCartela1: TList<Integer>;
begin
  Result := Self.FListaCompleta1;
end;

function TModelLotofacil.GetJogoCartela2: TList<Integer>;
begin
  Result := Self.FListaCompleta2;
end;

function TModelLotofacil.GetJogoCartela3: TList<Integer>;
begin
  Result := Self.FListaCompleta3;
end;

function TModelLotofacil.GetJogoCartela4: TList<Integer>;
begin
  Result := Self.FListaCompleta4;
end;

function TModelLotofacil.GetListaLotofacil: TList<Integer>;
begin
  Result := Self.FLista25;
end;

function TModelLotofacil.GetListaLotofacil10: TList<Integer>;
begin
  Result := Self.FLista10;
end;

function TModelLotofacil.GetListaLotofacil5A: TList<Integer>;
begin
  Result := Self.FLista5A;
end;

function TModelLotofacil.GetListaLotofacil5B: TList<Integer>;
begin
  Result := Self.FLista5B;
end;

function TModelLotofacil.GetListaLotofacil5C: TList<Integer>;
begin
  Result := Self.FLista5C;
end;

procedure TModelLotofacil.IniciarLista;
begin
  Self.FLista25.Clear;
  Self.FLista10.Clear;
  Self.FLista5A.Clear;
  Self.FLista5B.Clear;
  Self.FLista5C.Clear;
  Self.FListaCompleta1.Clear;
  Self.FListaCompleta2.Clear;
  Self.FListaCompleta3.Clear;
  Self.FListaCompleta4.Clear;
  for var i := 1 to 25 do
      Self.FLista25.Add(i);
end;

class function TModelLotofacil.New: IControllerLotofacil;
begin
  Result := Self.Create;
end;

end.
