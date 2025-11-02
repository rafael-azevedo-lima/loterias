unit loteria.view.lotofacil;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Edit, FMX.StdCtrls, FMX.EditBox, FMX.SpinBox,
  FMX.Controls.Presentation, System.Actions, FMX.ActnList,
  System.Generics.Collections, loteria.controller.lotofacil;

type
  TfrmLotofacil = class(TForm)
    layConteudoIndex: TLayout;
    layInformacoes: TLayout;
    layAcoes: TLayout;
    gplAcoes: TGridPanelLayout;
    rectAcoesLimpar: TRectangle;
    rectAcoesAutoCompletar: TRectangle;
    rectAcoesGerar: TRectangle;
    btnAcoesLimpar: TSpeedButton;
    btnAcoesAutoCompletar: TSpeedButton;
    btnAcoesGerar: TSpeedButton;
    layAposta: TLayout;
    rectInformacoesFundo: TRectangle;
    layApostaCombinacoes: TLayout;
    sbxNumerosCartela: TSpinBox;
    lblNumerosCartela: TLabel;
    layApostaLotofacil: TLayout;
    imgLotofacil: TImage;
    lblApostaLotofacil: TLabel;
    layApostaJogos: TLayout;
    sbxNumerosJogos: TSpinBox;
    lblNumeroJogos: TLabel;
    layApostaValor: TLayout;
    lblValorCartela: TLabel;
    edtValorCartela: TEdit;
    gplCartelaJogos: TGridPanelLayout;
    crcCartela01Jogo01: TCircle;
    lblCartela01Jogo01: TLabel;
    crcCartela01Jogo02: TCircle;
    lblCartela01Jogo02: TLabel;
    crcCartela01Jogo03: TCircle;
    lblCartela01Jogo03: TLabel;
    crcCartela01Jogo04: TCircle;
    lblCartela01Jogo04: TLabel;
    crcCartela01Jogo05: TCircle;
    lblCartela01Jogo05: TLabel;
    crcCartela01Jogo06: TCircle;
    lblCartela01Jogo06: TLabel;
    crcCartela01Jogo07: TCircle;
    lblCartela01Jogo07: TLabel;
    crcCartela01Jogo08: TCircle;
    lblCartela01Jogo08: TLabel;
    crcCartela01Jogo09: TCircle;
    lblCartela01Jogo09: TLabel;
    crcCartela01Jogo10: TCircle;
    lblCartela01Jogo10: TLabel;
    crcCartela01Jogo11: TCircle;
    lblCartela01Jogo11: TLabel;
    crcCartela01Jogo12: TCircle;
    lblCartela01Jogo12: TLabel;
    crcCartela01Jogo13: TCircle;
    lblCartela01Jogo13: TLabel;
    crcCartela01Jogo14: TCircle;
    lblCartela01Jogo14: TLabel;
    crcCartela01Jogo15: TCircle;
    lblCartela01Jogo15: TLabel;
    crcCartela01Jogo16: TCircle;
    lblCartela01Jogo16: TLabel;
    crcCartela01Jogo17: TCircle;
    lblCartela01Jogo17: TLabel;
    crcCartela01Jogo18: TCircle;
    lblCartela01Jogo18: TLabel;
    crcCartela01Jogo19: TCircle;
    lblCartela01Jogo19: TLabel;
    crcCartela01Jogo20: TCircle;
    lblCartela01Jogo20: TLabel;
    crcCartela02Jogo01: TCircle;
    lblCartela02Jogo01: TLabel;
    crcCartela02Jogo02: TCircle;
    lblCartela02Jogo02: TLabel;
    crcCartela02Jogo03: TCircle;
    lblCartela02Jogo03: TLabel;
    crcCartela02Jogo04: TCircle;
    lblCartela02Jogo04: TLabel;
    crcCartela02Jogo05: TCircle;
    lblCartela02Jogo05: TLabel;
    crcCartela02Jogo06: TCircle;
    lblCartela02Jogo06: TLabel;
    crcCartela02Jogo07: TCircle;
    lblCartela02Jogo07: TLabel;
    crcCartela02Jogo08: TCircle;
    lblCartela02Jogo08: TLabel;
    crcCartela02Jogo09: TCircle;
    lblCartela02Jogo09: TLabel;
    crcCartela02Jogo10: TCircle;
    lblCartela02Jogo10: TLabel;
    crcCartela02Jogo11: TCircle;
    lblCartela02Jogo11: TLabel;
    crcCartela02Jogo12: TCircle;
    lblCartela02Jogo12: TLabel;
    crcCartela02Jogo13: TCircle;
    lblCartela02Jogo13: TLabel;
    crcCartela02Jogo14: TCircle;
    lblCartela02Jogo14: TLabel;
    crcCartela02Jogo15: TCircle;
    lblCartela02Jogo15: TLabel;
    crcCartela02Jogo16: TCircle;
    lblCartela02Jogo16: TLabel;
    crcCartela02Jogo17: TCircle;
    lblCartela02Jogo17: TLabel;
    crcCartela02Jogo18: TCircle;
    lblCartela02Jogo18: TLabel;
    crcCartela02Jogo19: TCircle;
    lblCartela02Jogo19: TLabel;
    crcCartela02Jogo20: TCircle;
    lblCartela02Jogo20: TLabel;
    crcCartela03Jogo01: TCircle;
    lblCartela03Jogo01: TLabel;
    crcCartela03Jogo02: TCircle;
    lblCartela03Jogo02: TLabel;
    crcCartela03Jogo03: TCircle;
    lblCartela03Jogo03: TLabel;
    crcCartela03Jogo04: TCircle;
    lblCartela03Jogo04: TLabel;
    crcCartela03Jogo05: TCircle;
    lblCartela03Jogo05: TLabel;
    crcCartela03Jogo06: TCircle;
    lblCartela03Jogo06: TLabel;
    crcCartela03Jogo07: TCircle;
    lblCartela03Jogo07: TLabel;
    crcCartela03Jogo08: TCircle;
    lblCartela03Jogo08: TLabel;
    crcCartela03Jogo09: TCircle;
    lblCartela03Jogo09: TLabel;
    crcCartela03Jogo10: TCircle;
    lblCartela03Jogo10: TLabel;
    crcCartela03Jogo11: TCircle;
    lblCartela03Jogo11: TLabel;
    crcCartela03Jogo12: TCircle;
    lblCartela03Jogo12: TLabel;
    crcCartela03Jogo13: TCircle;
    lblCartela03Jogo13: TLabel;
    crcCartela03Jogo14: TCircle;
    lblCartela03Jogo14: TLabel;
    crcCartela03Jogo15: TCircle;
    lblCartela03Jogo15: TLabel;
    crcCartela03Jogo16: TCircle;
    lblCartela03Jogo16: TLabel;
    crcCartela03Jogo17: TCircle;
    lblCartela03Jogo17: TLabel;
    crcCartela03Jogo18: TCircle;
    lblCartela03Jogo18: TLabel;
    crcCartela03Jogo19: TCircle;
    lblCartela03Jogo19: TLabel;
    crcCartela03Jogo20: TCircle;
    lblCartela03Jogo20: TLabel;
    crcCartela04Jogo01: TCircle;
    lblCartela04Jogo01: TLabel;
    crcCartela04Jogo02: TCircle;
    lblCartela04Jogo02: TLabel;
    crcCartela04Jogo03: TCircle;
    lblCartela04Jogo03: TLabel;
    crcCartela04Jogo04: TCircle;
    lblCartela04Jogo04: TLabel;
    crcCartela04Jogo05: TCircle;
    lblCartela04Jogo05: TLabel;
    crcCartela04Jogo06: TCircle;
    lblCartela04Jogo06: TLabel;
    crcCartela04Jogo07: TCircle;
    lblCartela04Jogo07: TLabel;
    crcCartela04Jogo08: TCircle;
    lblCartela04Jogo08: TLabel;
    crcCartela04Jogo09: TCircle;
    lblCartela04Jogo09: TLabel;
    crcCartela04Jogo10: TCircle;
    lblCartela04Jogo10: TLabel;
    crcCartela04Jogo11: TCircle;
    lblCartela04Jogo11: TLabel;
    crcCartela04Jogo12: TCircle;
    lblCartela04Jogo12: TLabel;
    crcCartela04Jogo13: TCircle;
    lblCartela04Jogo13: TLabel;
    crcCartela04Jogo14: TCircle;
    lblCartela04Jogo14: TLabel;
    crcCartela04Jogo15: TCircle;
    lblCartela04Jogo15: TLabel;
    crcCartela04Jogo16: TCircle;
    lblCartela04Jogo16: TLabel;
    crcCartela04Jogo17: TCircle;
    lblCartela04Jogo17: TLabel;
    crcCartela04Jogo18: TCircle;
    lblCartela04Jogo18: TLabel;
    crcCartela04Jogo19: TCircle;
    lblCartela04Jogo19: TLabel;
    crcCartela04Jogo20: TCircle;
    lblCartela04Jogo20: TLabel;
    layListaPrincipal: TLayout;
    rectListaFundo: TRectangle;
    layListaConteudo: TLayout;
    layLista1: TLayout;
    lblLista10: TLabel;
    layLista3: TLayout;
    lblLista5B: TLabel;
    layLista2: TLayout;
    lblLista5A: TLabel;
    layLista4: TLayout;
    lblLista5C: TLabel;
    rectLotofacilFundo: TRectangle;
    layCartelaJogos: TLayout;
    rectCartelaJogos: TRectangle;
    layLista: TLayout;
    gplLista: TGridPanelLayout;
    btnLista01: TSpeedButton;
    btnLista02: TSpeedButton;
    btnLista03: TSpeedButton;
    btnLista04: TSpeedButton;
    btnLista05: TSpeedButton;
    btnLista06: TSpeedButton;
    btnLista07: TSpeedButton;
    btnLista08: TSpeedButton;
    btnLista09: TSpeedButton;
    btnLista10: TSpeedButton;
    btnLista11: TSpeedButton;
    btnLista12: TSpeedButton;
    btnLista13: TSpeedButton;
    btnLista14: TSpeedButton;
    btnLista15: TSpeedButton;
    btnLista16: TSpeedButton;
    btnLista17: TSpeedButton;
    btnLista18: TSpeedButton;
    btnLista19: TSpeedButton;
    btnLista20: TSpeedButton;
    btnLista21: TSpeedButton;
    btnLista22: TSpeedButton;
    btnLista23: TSpeedButton;
    btnLista24: TSpeedButton;
    btnLista25: TSpeedButton;
    layValorAproximado: TLayout;
    rectValorAproximado: TRectangle;
    lblValorAproximado: TLabel;
    actlLotofacil: TActionList;
    actLimpar: TAction;
    actCompletar: TAction;
    actGerar: TAction;
    actBotao1: TAction;
    actBotao2: TAction;
    actBotao3: TAction;
    actBotao4: TAction;
    actBotao5: TAction;
    actBotao6: TAction;
    actBotao7: TAction;
    actBotao8: TAction;
    actBotao9: TAction;
    actBotao10: TAction;
    actBotao11: TAction;
    actBotao12: TAction;
    actBotao13: TAction;
    actBotao14: TAction;
    actBotao15: TAction;
    actBotao16: TAction;
    actBotao17: TAction;
    actBotao18: TAction;
    actBotao19: TAction;
    actBotao20: TAction;
    actBotao21: TAction;
    actBotao22: TAction;
    actBotao23: TAction;
    actBotao24: TAction;
    actBotao25: TAction;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure actLimparExecute(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCompletarExecute(Sender: TObject);
    procedure actBotao1Execute(Sender: TObject);
    procedure edtValorCartelaChangeTracking(Sender: TObject);
    procedure sbxNumerosJogosChangeTracking(Sender: TObject);
    procedure sbxNumerosCartelaChangeTracking(Sender: TObject);
    procedure actBotao2Execute(Sender: TObject);
    procedure actBotao3Execute(Sender: TObject);
    procedure actBotao4Execute(Sender: TObject);
    procedure actBotao5Execute(Sender: TObject);
    procedure actBotao6Execute(Sender: TObject);
    procedure actBotao7Execute(Sender: TObject);
    procedure actBotao8Execute(Sender: TObject);
    procedure actBotao9Execute(Sender: TObject);
    procedure actBotao10Execute(Sender: TObject);
    procedure actBotao11Execute(Sender: TObject);
    procedure actBotao12Execute(Sender: TObject);
    procedure actBotao13Execute(Sender: TObject);
    procedure actBotao14Execute(Sender: TObject);
    procedure actBotao15Execute(Sender: TObject);
    procedure actBotao16Execute(Sender: TObject);
    procedure actBotao17Execute(Sender: TObject);
    procedure actBotao18Execute(Sender: TObject);
    procedure actBotao19Execute(Sender: TObject);
    procedure actBotao20Execute(Sender: TObject);
    procedure actBotao21Execute(Sender: TObject);
    procedure actBotao22Execute(Sender: TObject);
    procedure actBotao23Execute(Sender: TObject);
    procedure actBotao24Execute(Sender: TObject);
    procedure actBotao25Execute(Sender: TObject);
    procedure btnAcoesGerarMouseEnter(Sender: TObject);
    procedure btnAcoesGerarMouseLeave(Sender: TObject);
    procedure btnAcoesAutoCompletarMouseEnter(Sender: TObject);
    procedure btnAcoesAutoCompletarMouseLeave(Sender: TObject);
    procedure btnAcoesLimparMouseEnter(Sender: TObject);
    procedure btnAcoesLimparMouseLeave(Sender: TObject);
  private
    Lotofacil: IControllerLotofacil;
    procedure AtualizaValoresAposta;
    procedure AtualizaListas;
  public
    { Public declarations }
  end;

var
  frmLotofacil: TfrmLotofacil;

implementation

{$R *.fmx}

uses loteria.model.lotofacil;

procedure TfrmLotofacil.actBotao10Execute(Sender: TObject);
begin
  Lotofacil.InsereDeletaNumeroNaLista(10);
  btnLista10.Enabled := False;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actBotao11Execute(Sender: TObject);
begin
  Lotofacil.InsereDeletaNumeroNaLista(11);
  btnLista11.Enabled := False;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actBotao12Execute(Sender: TObject);
begin
  Lotofacil.InsereDeletaNumeroNaLista(12);
  btnLista12.Enabled := False;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actBotao13Execute(Sender: TObject);
begin
  Lotofacil.InsereDeletaNumeroNaLista(13);
  btnLista13.Enabled := False;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actBotao14Execute(Sender: TObject);
begin
  Lotofacil.InsereDeletaNumeroNaLista(14);
  btnLista14.Enabled := False;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actBotao15Execute(Sender: TObject);
begin
  Lotofacil.InsereDeletaNumeroNaLista(15);
  btnLista15.Enabled := False;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actBotao16Execute(Sender: TObject);
begin
  Lotofacil.InsereDeletaNumeroNaLista(16);
  btnLista16.Enabled := False;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actBotao17Execute(Sender: TObject);
begin
  Lotofacil.InsereDeletaNumeroNaLista(17);
  btnLista17.Enabled := False;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actBotao18Execute(Sender: TObject);
begin
  Lotofacil.InsereDeletaNumeroNaLista(18);
  btnLista18.Enabled := False;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actBotao19Execute(Sender: TObject);
begin
  Lotofacil.InsereDeletaNumeroNaLista(19);
  btnLista19.Enabled := False;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actBotao1Execute(Sender: TObject);
begin
  Lotofacil.InsereDeletaNumeroNaLista(1);
  btnLista01.Enabled := False;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actBotao20Execute(Sender: TObject);
begin
  Lotofacil.InsereDeletaNumeroNaLista(20);
  btnLista20.Enabled := False;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actBotao21Execute(Sender: TObject);
begin
  Lotofacil.InsereDeletaNumeroNaLista(21);
  btnLista21.Enabled := False;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actBotao22Execute(Sender: TObject);
begin
  Lotofacil.InsereDeletaNumeroNaLista(22);
  btnLista22.Enabled := False;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actBotao23Execute(Sender: TObject);
begin
  Lotofacil.InsereDeletaNumeroNaLista(23);
  btnLista23.Enabled := False;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actBotao24Execute(Sender: TObject);
begin
  Lotofacil.InsereDeletaNumeroNaLista(24);
  btnLista24.Enabled := False;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actBotao25Execute(Sender: TObject);
begin
  Lotofacil.InsereDeletaNumeroNaLista(25);
  btnLista25.Enabled := False;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actBotao2Execute(Sender: TObject);
begin
  Lotofacil.InsereDeletaNumeroNaLista(2);
  btnLista02.Enabled := False;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actBotao3Execute(Sender: TObject);
begin
  Lotofacil.InsereDeletaNumeroNaLista(3);
  btnLista03.Enabled := False;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actBotao4Execute(Sender: TObject);
begin
  Lotofacil.InsereDeletaNumeroNaLista(4);
  btnLista04.Enabled := False;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actBotao5Execute(Sender: TObject);
begin
  Lotofacil.InsereDeletaNumeroNaLista(5);
  btnLista05.Enabled := False;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actBotao6Execute(Sender: TObject);
begin
  Lotofacil.InsereDeletaNumeroNaLista(6);
  btnLista06.Enabled := False;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actBotao7Execute(Sender: TObject);
begin
  Lotofacil.InsereDeletaNumeroNaLista(7);
  btnLista07.Enabled := False;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actBotao8Execute(Sender: TObject);
begin
  Lotofacil.InsereDeletaNumeroNaLista(8);
  btnLista08.Enabled := False;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actBotao9Execute(Sender: TObject);
begin
  Lotofacil.InsereDeletaNumeroNaLista(9);
  btnLista09.Enabled := False;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actCompletarExecute(Sender: TObject);
var
  Component: TComponent;
begin
  {$IFDEF MSWINDOWS}
      for var I := 0 to Self.ComponentCount - 1 do
      begin
          Component := Self.Components[I];
          if Component is TSpeedButton then
              if (TSpeedButton(Component).Tag = 25) then
                  TSpeedButton(Component).Enabled := False;
      end;
  {$ENDIF MSWINDOWS}
  Lotofacil.CompletarAleatorio;
  Self.AtualizaListas;
end;

procedure TfrmLotofacil.actGerarExecute(Sender: TObject);
var
  Component: TComponent;
  ListaIndex,
  LabelContagem,
  ControlaCartela: integer;
  LabelNumero: String;
begin
  {$IFDEF MSWINDOWS}
      for var k := 0 to Self.ComponentCount - 1 do
      begin
          Component := Self.Components[k];
          if Component is TLabel then
              if (TLabel(Component).Tag = 25) then
                   TLabel(Component).Text := '-';
      end;
  {$ENDIF MSWINDOWS}
  Self.actCompletar.Execute;
  Lotofacil.GerarJogos(Trunc(sbxNumerosJogos.Value),Trunc(sbxNumerosCartela.Value));
  ControlaCartela := 1;
  for var j := ControlaCartela to Trunc(sbxNumerosJogos.Value) do
  begin
      LabelContagem := 1;
      ListaIndex := 0;
      {$IFDEF MSWINDOWS}
        for var I := 0 to Self.ComponentCount - 1 do
        begin
            Component := Self.Components[I];
            if Component is TLabel then
            begin
                if (TLabel(Component).Tag = 25) then
                begin
                    LabelNumero := 'lblCartela' + FormatFloat('00',ControlaCartela) + 'Jogo' + FormatFloat('00',LabelContagem);
                    if Pos(LabelNumero,Components[i].Name) = 1 then
                    begin
                        if (ListaIndex <= Trunc(sbxNumerosCartela.Value) -1) then
                        begin
                            case ControlaCartela of
                                1: TLabel(Components[i]).Text := IntToStr(Lotofacil.CartelaLotofacil01[ListaIndex]);
                                2: TLabel(Components[i]).Text := IntToStr(Lotofacil.CartelaLotofacil02[ListaIndex]);
                                3: TLabel(Components[i]).Text := IntToStr(Lotofacil.CartelaLotofacil03[ListaIndex]);
                                4: TLabel(Components[i]).Text := IntToStr(Lotofacil.CartelaLotofacil04[ListaIndex]);
                            end;
                        end;
                        Inc(ListaIndex);
                        Inc(LabelContagem);
                    end;
                end;
            end;
        end;
      {$ENDIF MSWINDOWS}
      Inc(ControlaCartela);
  end;
end;

procedure TfrmLotofacil.actLimparExecute(Sender: TObject);
var
  Component: TComponent;
begin
  {$IFDEF MSWINDOWS}
      for var I := 0 to Self.ComponentCount - 1 do
      begin
          Component := Self.Components[I];
          if Component is TSpeedButton then
              if (TSpeedButton(Component).Tag = 25) then
                  TSpeedButton(Component).Enabled := True;
          if Component is TLabel then
              if (TLabel(Component).Tag = 25) then
                   TLabel(Component).Text := '-';
      end;
  {$ENDIF MSWINDOWS}
  sbxNumerosJogos.Value := 4;
  sbxNumerosCartela.Value := 15;
  Lotofacil.IniciarLista;
  Self.AtualizaListas;
  Self.AtualizaValoresAposta;
end;

procedure TfrmLotofacil.AtualizaListas;
begin
  lblLista10.Text := Lotofacil.MostraLista10;
  lblLista5A.Text := Lotofacil.MostraLista5A;
  lblLista5B.Text := Lotofacil.MostraLista5B;
  lblLista5C.Text := Lotofacil.MostraLista5C;
end;

procedure TfrmLotofacil.AtualizaValoresAposta;
var
  Valor: Double;
  Jogos,
  Combinacoes: integer;
begin
  Jogos := Trunc(sbxNumerosJogos.Value);
  Combinacoes := Trunc(sbxNumerosCartela.Value);
  try
      Valor := StrToFloat(edtValorCartela.Text);
  except
      Valor := 0;
  end;
  lblValorAproximado.Text := FormatFloat('R$ ###,###,###,##0.00',
    Lotofacil.CalculaValorTotalJogo(Valor,Jogos,Combinacoes));
end;

procedure TfrmLotofacil.btnAcoesAutoCompletarMouseEnter(Sender: TObject);
begin
  TButton(Sender).Opacity := 0.5;
end;

procedure TfrmLotofacil.btnAcoesAutoCompletarMouseLeave(Sender: TObject);
begin
   TButton(Sender).Opacity := 1;
end;

procedure TfrmLotofacil.btnAcoesGerarMouseEnter(Sender: TObject);
begin
  TButton(Sender).Opacity := 0.5;
end;

procedure TfrmLotofacil.btnAcoesGerarMouseLeave(Sender: TObject);
begin
  TButton(Sender).Opacity := 1;
end;

procedure TfrmLotofacil.btnAcoesLimparMouseEnter(Sender: TObject);
begin
  TButton(Sender).Opacity := 0.5;
end;

procedure TfrmLotofacil.btnAcoesLimparMouseLeave(Sender: TObject);
begin
  TButton(Sender).Opacity := 1;
end;

procedure TfrmLotofacil.edtValorCartelaChangeTracking(Sender: TObject);
begin
  if Length(edtValorCartela.Text) > 0 then
      Self.AtualizaValoresAposta;
end;

procedure TfrmLotofacil.FormCreate(Sender: TObject);
begin
  Lotofacil := TModelLotofacil.New;
  Self.actLimpar.Execute;
end;

procedure TfrmLotofacil.sbxNumerosCartelaChangeTracking(Sender: TObject);
begin
  Self.AtualizaValoresAposta;
end;

procedure TfrmLotofacil.sbxNumerosJogosChangeTracking(Sender: TObject);
begin
  Self.AtualizaValoresAposta;
end;

end.
