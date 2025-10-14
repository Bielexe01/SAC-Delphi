unit vendas_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB,
  Data.Win.ADODB, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  Tvendas = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    SplitView1: TSplitView;
    conectionvenda: TADOConnection;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQuery1mes: TStringField;
    ADOQuery1quantia: TStringField;
    DataSource1: TDataSource;
    DBNavigator2: TDBNavigator;
    ADOQuery2: TADOQuery;
    ADOQuery2id_transacao: TAutoIncField;
    ADOQuery2codigo_barras: TStringField;
    ADOQuery2nome_produto: TStringField;
    ADOQuery2preco_unitario: TBCDField;
    ADOQuery2quantidade: TIntegerField;
    ADOQuery2preco_total: TBCDField;
    ADOQuery2data_hora: TDateTimeField;
    ADOQuery2sessao_id: TIntegerField;
    DataSource3: TDataSource;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  vendas: Tvendas;

implementation

{$R *.dfm}

procedure Tvendas.Image1Click(Sender: TObject);
begin
close;
end;

end.
