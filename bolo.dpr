program bolo;

uses
  Vcl.Forms,
  menu_U in 'menu_U.pas' {menu},
  vendas_U in 'vendas_U.pas' {vendas},
  produtos_U in 'produtos_U.pas' {produtos},
  cliente_U in 'cliente_U.pas' {clientes},
  funcionario_U in 'funcionario_U.pas' {funcionarios},
  estoque_U in 'estoque_U.pas' {forne},
  login_U in 'login_U.pas' {Form3},
  caixa_U in 'caixa_U.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tmenu, menu);
  Application.CreateForm(Tvendas, vendas);
  Application.CreateForm(Tprodutos, produtos);
  Application.CreateForm(Tclientes, clientes);
  Application.CreateForm(Tfuncionarios, funcionarios);
  Application.CreateForm(Tforne, forne);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
