unit cliente_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.WinXCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB,
  Data.Win.ADODB, vendas_U, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  Tclientes = class(TForm)
    SplitView1: TSplitView;
    Panel1: TPanel;
    Image1: TImage;
    ADOConnection1: TADOConnection;
    Datacliente: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery1id: TAutoIncField;
    ADOQuery1nome: TStringField;
    ADOQuery1telefone: TStringField;
    ADOQuery1endereco: TStringField;
    ADOQuery1cidade: TStringField;
    ADOQuery1estado: TStringField;
    ADOQuery1cep: TStringField;
    ADOQuery1creditodevedor: TBCDField;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure Label4Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  clientes: Tclientes;

implementation

{$R *.dfm}

procedure Tclientes.Image1Click(Sender: TObject);
begin
close;
end;

procedure Tclientes.Label4Click(Sender: TObject);
begin    ;

end;

end.
