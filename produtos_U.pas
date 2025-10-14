unit produtos_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.WinXCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB,
  Data.Win.ADODB, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  Tprodutos = class(TForm)
    SplitView1: TSplitView;
    Panel1: TPanel;
    Image1: TImage;
    ADOConnection1: TADOConnection;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    ADOQuery1codigo_barras: TStringField;
    ADOQuery1nome_produto: TStringField;
    ADOQuery1preco_unitario: TBCDField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  produtos: Tprodutos;

implementation

{$R *.dfm}

procedure Tprodutos.Image1Click(Sender: TObject);
begin
close;
end;

end.
