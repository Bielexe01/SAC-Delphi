unit menu_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.WinXCtrls,vendas_U,produtos_U,cliente_U,funcionario_U,estoque_U,login_U,caixa_U;

type
  Tmenu = class(TForm)
    SplitView1: TSplitView;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    Image6: TImage;
    Image7: TImage;
    Label5: TLabel;
    Image8: TImage;
    Label6: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  menu: Tmenu;



implementation

{$R *.dfm}


procedure Tmenu.Image1Click(Sender: TObject);
begin
  SplitView1.Opened := not SplitView1.Opened;
end;

procedure Tmenu.Image2Click(Sender: TObject);
begin
form3.ShowModal;
end;

procedure Tmenu.Image3Click(Sender: TObject);
begin
funcionarios.showmodal;
end;

procedure Tmenu.Image4Click(Sender: TObject);
begin
produtos.ShowModal;
end;

procedure Tmenu.Image5Click(Sender: TObject);
begin
vendas.ShowModal;
end;

procedure Tmenu.Image7Click(Sender: TObject);
begin
forne.ShowModal;
end;

procedure Tmenu.Image8Click(Sender: TObject);
begin
form1.ShowModal;
end;

procedure Tmenu.Label1Click(Sender: TObject);
begin
produtos.ShowModal;
end;

procedure Tmenu.Label2Click(Sender: TObject);
begin
funcionarios.ShowModal;
end;

procedure Tmenu.Label3Click(Sender: TObject);
begin
form3.ShowModal;
end;

procedure Tmenu.Label4Click(Sender: TObject);
begin
vendas.ShowModal;
end;

procedure Tmenu.Label5Click(Sender: TObject);
begin
forne.ShowModal;
end;

procedure Tmenu.Label6Click(Sender: TObject);
begin
form1.ShowModal;
end;

end.
