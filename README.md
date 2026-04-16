# SAC-Delphi

Sistema desktop desenvolvido em Delphi VCL para automacao comercial, com modulos de clientes, funcionarios, produtos, estoque, vendas e caixa.

## Visao geral

O projeto foi construido como uma aplicacao Windows para operacao de loja e controle interno. A estrutura gira em torno de formularios VCL conectados a banco de dados via ADO, com foco em cadastro, consulta e registro de vendas.

## Modulos do sistema

- `login_U`: tela de autenticacao
- `menu_U`: menu principal e navegacao entre modulos
- `cliente_U`: cadastro e consulta de clientes
- `funcionario_U`: cadastro e consulta de funcionarios
- `produtos_U`: manutencao de produtos
- `estoque_U`: controle de estoque e fornecedores
- `vendas_U`: visualizacao de vendas registradas
- `caixa_U`: operacao de caixa por leitura manual de codigo de barras

## Funcionalidades

- login para acesso ao sistema
- menu central com abertura dos modulos em janelas modais
- cadastro de clientes com campos como nome, telefone, endereco e credito devedor
- cadastro de funcionarios com cargo, salario, datas e contato
- consulta e manutencao de produtos com codigo de barras e preco unitario
- tela de caixa com acumulacao de total por sessao
- registro de vendas em tabela separada
- navegacao e manipulacao de dados com `DBGrid` e `DBNavigator`

## Tecnologias usadas

- Delphi / Object Pascal
- VCL
- ADO (`TADOConnection`, `TADOQuery`)
- aplicacao Windows `Win32` e `Win64`

## Estrutura principal

```text
.
|-- bolo.dpr            # ponto de entrada da aplicacao
|-- bolo.dproj          # projeto Delphi
|-- menu_U.pas          # menu principal
|-- login_U.pas         # autenticacao
|-- cliente_U.pas       # modulo de clientes
|-- funcionario_U.pas   # modulo de funcionarios
|-- produtos_U.pas      # modulo de produtos
|-- estoque_U.pas       # modulo de estoque / fornecedores
|-- vendas_U.pas        # historico e consulta de vendas
|-- caixa_U.pas         # operacao do caixa
`-- *.dfm               # definicao visual dos formularios
```

## Requisitos

- Embarcadero Delphi com suporte a VCL
- Windows
- banco de dados configurado manualmente nas conexoes ADO

## Como abrir o projeto

1. Clone o repositorio:

```bash
git clone https://github.com/Bielexe01/SAC-Delphi.git
cd SAC-Delphi
```

2. Abra o arquivo `bolo.dproj` no Delphi.

3. Revise os componentes `TADOConnection` de cada formulario e configure a `ConnectionString` de acordo com o seu ambiente.

4. Compile em `Win32` ou `Win64`.

5. Execute o projeto pelo IDE ou pelo executavel gerado.

## Banco de dados

O sistema usa consultas SQL diretamente nas units e nos formularios. Pelos arquivos do projeto, aparecem referencias como:

- `produtosss`
- `vendass`
- cadastro de clientes
- cadastro de funcionarios
- dados de fornecedores / estoque

Algumas consultas usam `public.vendass`, o que sugere uso de um banco relacional com schema publico. Como a `ConnectionString` nao esta versionada no repositorio, a configuracao final depende do ambiente local.

## Fluxo basico do sistema

### Operacao geral

1. abrir a tela de login
2. autenticar no sistema
3. navegar pelo `menu_U`
4. abrir o modulo desejado
5. consultar, cadastrar ou editar dados pelos grids e navegadores

### Caixa

1. abrir o modulo `caixa_U`
2. informar o codigo de barras
3. buscar o produto pelo cadastro
4. registrar o item na tabela de vendas da sessao atual
5. acompanhar o total acumulado em tela

## Credenciais atuais

Na implementacao atual, o login esta hardcoded em `login_U.pas`:

- usuario: `admin`
- senha: `12345`

Para um ambiente real, o ideal e mover essa autenticacao para o banco de dados.

## Pontos de atencao

- as conexoes ADO precisam ser configuradas manualmente
- o login ainda nao usa autenticacao persistida em banco
- o projeto possui arquivos locais do Delphi no repositorio, como `.dproj.local`
- existe mais de uma implementacao relacionada ao caixa (`caixa_U` e `Unit1`), o que pode indicar versoes de trabalho antigas

## Melhorias futuras

- mover login para tabela de usuarios
- centralizar a configuracao de conexao com banco
- criar script SQL inicial das tabelas
- separar melhor fornecedores e estoque, se forem conceitos distintos
- revisar nomenclatura das tabelas para algo mais padronizado
- adicionar tratamento de erros de conexao e consultas

## Autor

Projeto publicado por [Bielexe01](https://github.com/Bielexe01).
