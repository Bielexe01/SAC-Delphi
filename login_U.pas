unit login_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,Vcl.ExtCtrls,cliente_U, vendas_U,
  Vcl.Imaging.pngimage;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Image2: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
// Verifica se o login está correto
  if (Edit1.Text = 'admin') and (Edit2.Text = '12345') then
       begin
         clientes.ShowModal;
         begin
           close;
         end;
       end

     else
  begin
    ShowMessage('Usuário ou senha incorretos.');
  end;
end;



procedure TForm3.Image2Click(Sender: TObject);
begin
   close;
end;

end.
