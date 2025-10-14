unit funcionario_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.WinXCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Data.Win.ADODB, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  Tfuncionarios = class(TForm)
    SplitView1: TSplitView;
    Panel1: TPanel;
    Image1: TImage;
    ADOQuery1: TADOQuery;
    Datafunci: TDataSource;
    ADOConnection1: TADOConnection;
    ADOQuery1id: TAutoIncField;
    ADOQuery1nome: TStringField;
    ADOQuery1cargo: TStringField;
    ADOQuery1data_contratacao: TDateField;
    ADOQuery1salario: TBCDField;
    ADOQuery1telefone: TStringField;
    ADOQuery1endereco: TStringField;
    ADOQuery1data_nascimento: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
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
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  funcionarios: Tfuncionarios;

implementation

{$R *.dfm}

procedure TForm5Label3Click(Sender: TObject);
begin


end;

procedure TForm5Label4Click(Sender: TObject);
begin

end;

procedure Tfuncionarios.Image1Click(Sender: TObject);
begin
close;
end;

end.
