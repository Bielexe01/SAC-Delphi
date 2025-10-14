unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.WinXCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.Win.ADODB,
  Vcl.Buttons, Vcl.DBCtrls;

type
 TForm1 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    SplitView1: TSplitView;
    Panel2: TPanel;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1nome_produto: TStringField;
    ADOQuery1preco_unitario: TBCDField;
    ADOQuery1codigo_barras: TStringField;
    ADOQuery1sessao_id: TIntegerField;
    ADOQuery1data_hora: TDateTimeField;
    procedure Image2Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
   FTotalAcumulado: Double; // Acumulador de valores
    FSessaoID: Integer; // Variável para controlar a sessão atual
    procedure AdicionarProduto(codigoBarras: string);
    procedure AtualizarSomaNaLabel(valorProduto: Double);
    procedure AtualizarGrid;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
procedure TForm1.FormActivate(Sender: TObject);
begin
 AtualizarGrid;
end;

procedure TForm1.AtualizarGrid;
begin
  // Recarrega o DBGrid para exibir os novos dados apenas da sessão atual
  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'SELECT * FROM vendass WHERE sessao_id = :sessao_id';
  ADOQuery1.Parameters.ParamByName('sessao_id').Value := FSessaoID;
  ADOQuery1.Open;
end;

procedure TForm1.AdicionarProduto(codigoBarras: string);
var
  precoProduto: Double;
  nomeProduto: string;
begin
  // Busca o produto na tabela de produtos com base no código de barras
  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'SELECT  sessao_id, data_hora, nome_produto, preco_unitario,codigo_barras FROM vendass WHERE codigo_barras = :codigo_barras';
  ADOQuery1.Parameters.ParamByName('codigo_barras').Value := codigoBarras;
  ADOQuery1.Open;

  // Verifica se encontrou o produto
  if not ADOQuery1.IsEmpty then
  begin
    nomeProduto := ADOQuery1.FieldByName('nome_produto').AsString;
    precoProduto := ADOQuery1.FieldByName('preco_unitario').AsFloat;

    // Insere o produto na tabela 'vendas' com o 'sessao_id'
    ADOQuery1.Close;
    ADOQuery1.SQL.Text := 'INSERT INTO vendass (codigo_barras, nome_produto, preco_unitario, quantidade, preco_total, sessao_id, data_hora) ' +
                          'VALUES (:codigo_barras, :nome_produto, :preco_unitario, 1, :preco_total, :sessao_id, NOW())';
    ADOQuery1.Parameters.ParamByName('codigo_barras').Value := codigoBarras;
    ADOQuery1.Parameters.ParamByName('nome_produto').Value := nomeProduto;
    ADOQuery1.Parameters.ParamByName('preco_unitario').Value := precoProduto;
    ADOQuery1.Parameters.ParamByName('preco_total').Value := precoProduto;
    ADOQuery1.Parameters.ParamByName('sessao_id').Value := FSessaoID;
    ADOQuery1.ExecSQL;

    // Atualiza o acumulador com o valor do produto
    AtualizarSomaNaLabel(precoProduto);

    // Recarrega o DBGrid para mostrar apenas os produtos da sessão atual
    AtualizarGrid;
  end
  else
  begin
    ShowMessage('Produto não encontrado!');
  end;
end;

procedure TForm1.AtualizarSomaNaLabel(valorProduto: Double);
begin
  // Soma o valor do produto ao total acumulado
  FTotalAcumulado := FTotalAcumulado + valorProduto;

  // Atualiza a Label1 com a soma acumulada
  Label1.Caption := 'Total: R$ ' + FormatFloat('#,##0.00', FTotalAcumulado);
end;


procedure TForm1.Image1Click(Sender: TObject);
begin
close;
end;

procedure TForm1.Image2Click(Sender: TObject);
var
  codigoBarras: string;
begin
  // Solicita o código de barras ao usuário
  codigoBarras := InputBox('Código de Barras', 'Digite o código de barras:', '');

  // Verifica se o código de barras foi inserido
  if codigoBarras = '' then
  begin
    ShowMessage('Por favor, insira um código de barras.');
    Exit;
  end;

  // Adiciona o produto ao sistema
  AdicionarProduto(codigoBarras);
end;

procedure TForm1.Image5Click(Sender: TObject);
begin
  // Reinicia a soma acumulada
  FTotalAcumulado := 0;
  Label1.Caption := 'Total: R$ 0,00';

  // Inicia uma nova sessão ao clicar no botão de reiniciar
  FSessaoID := FSessaoID + 1;  // Incrementa o ID da sessão
  AtualizarGrid;  // Limpa o grid ao iniciar nova sessão
end;

end.
