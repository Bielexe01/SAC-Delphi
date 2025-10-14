unit estoque_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.WinXCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB,
  Data.Win.ADODB, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  Tforne = class(TForm)
    SplitView1: TSplitView;
    Panel1: TPanel;
    Image1: TImage;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQuery1id: TAutoIncField;
    ADOQuery1nome: TStringField;
    ADOQuery1telefone: TStringField;
    ADOQuery1endereco: TStringField;
    ADOQuery1cidade: TStringField;
    ADOQuery1estado: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  forne: Tforne;

implementation

{$R *.dfm}

procedure Tforne.Image1Click(Sender: TObject);
begin
close;
end;

end.
