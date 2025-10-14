object vendas: Tvendas
  Left = 0
  Top = 0
  Caption = 'vendas'
  ClientHeight = 824
  ClientWidth = 1924
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  TextHeight = 15
  object Label3: TLabel
    Left = 184
    Top = 144
    Width = 108
    Height = 15
    Caption = 'CODIGO DE BARRAS'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 184
    Top = 192
    Width = 53
    Height = 15
    Caption = 'PRODUTO'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 184
    Top = 240
    Width = 92
    Height = 15
    Caption = 'PRE'#199'O UNITARIO'
    FocusControl = DBEdit5
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1924
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Color = clPurple
    ParentBackground = False
    TabOrder = 0
    object Image1: TImage
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 40
      Height = 40
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000430000
        00430806000000C7CAB873000000097048597300000B1300000B1301009A9C18
        000004034944415478DAED9A5B48154118C7E75466105D0CB1B42C8B30BB823D
        249594A6F6104641443D253D041184D58B4185114525141151D24357BB486F41
        103D5950440449D89DCAEE200596DD48F3F49B7695D1CE1E77CFC5DD76E70F7F
        3E3C3BB3FBCD0FBFDD999D0D09AD6E85DC4EC04BD2301469188A340C45098511
        0E8727105A42A1D00FB707E62A0C4094134EE35C607C727B60AEC000C220C276
        BC030FC0E98184018871848B78BEF273F06000A294508747F73A141C1811CAA2
        B7820103106385511685519AF91F06201611CEE1317D34F52F0C200C14464958
        9545306000224318FF0DA50ECEE93F18802813C6D322C3E13957E02FFD907B3B
        FE885F02FF7B52609865518DB7097B65E1053DC7B7F0257C1538ED71C30044A6
        30CAA2D8EDD1C5A1167C011F00CA9B986000A288701E67BA3D9A04492E160FE3
        DD40F96A1B86397F68C4E96E8F20096AC62B0172D7160C1348B6302654F3DCCE
        3E09FA89D701A4CE160C13480A613FDE24FCF7E2278CB702A4C6160C05CA32C2
        499CE6F60892A00D0039661B860944BEB5AAC7056E679F6075E01280DCB00DC3
        043298B04F382B9B2DF89BCDB689F8CF9393C2C9B8080FB7D9473E726700A4C7
        E4D0D6001D968D2BD371724C252CC75538DF469743E4B9D9310CF36239C2289B
        395E84A1E42967CD95782F4E8DD2F4179E42AECD8E619817B253369E58A891EB
        42C26511BD748E90EBC6986028178A56369E8061E65944B886532C9AB4E1ACAE
        196A3CEF407344E4B2F10C0C334FB9E8DC19A5C96AF2AD8F0B86792159367292
        56A99CCB6B30E47DE3291E6FD1E414F9AE8D1B86724179173F218CB2F1140C33
        3FF9D4386871F819F9E6260C8679C11C6194CD120FC290FB3B56CBF94E3C4CBE
        204AF45EAB2C9B4E4EDCE1368008B9BD204CB4383C939C9BFCB6188B06433E55
        CA2C0E1703A32148306E0BEB75560130EE040286B90BD88A875A3491738D0F41
        81B18070DDE2F0679C068C705060C8EF46D6581C6E00C4DF17E0BE8701883CC2
        7D613D25AF06C62EDFC330EF150DA2E7F723BD950F8C465FC300841CDB51BC3E
        4AB37B8098DDF5872F61006208A11657F4D1B40218677C0B0310722E711CCFEA
        A3E91361BCFAEB9E2DFB020600E437238B85F1C428B1D9AD1C1057D41F62F98C
        691A610FCE76D8758448CE46F6283CD2619FB380F8E7511B0B8C8784A9491854
        7FE9019E0B8CB6B860985B90AFDD1E4D1C7A8B0B01F12AD241A7302609E35B88
        FF518FF0524058E61F141872F9BE0A10ADD11AF91D86DCD99337FB1A40FCEEAB
        B15FEF1972C75D7E7853058477763BC5F23491B597E7F6682DF45E18DF75D502
        E1B1D3CEB1C0982E8CADBB2CB7472E8C7711B26C9BF04D61AC353A633D992F66
        A0899286A148C350A46128D2301469188A340C451A86220D439186A148C350A4
        6128D23014FD011A41475317F04F020000000049454E44AE426082}
      OnClick = Image1Click
      ExplicitLeft = 6
      ExplicitTop = 6
      ExplicitHeight = 38
    end
  end
  object SplitView1: TSplitView
    Left = 0
    Top = 50
    Width = 150
    Height = 774
    Color = clPurple
    Constraints.MinWidth = 50
    OpenedWidth = 150
    Placement = svpLeft
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 148
    Top = 527
    Width = 1452
    Height = 281
    Align = alCustom
    DataSource = DataSource3
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBNavigator2: TDBNavigator
    Left = 156
    Top = 50
    Width = 1321
    Height = 25
    DataSource = DataSource3
    Align = alCustom
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 184
    Top = 160
    Width = 108
    Height = 23
    DataField = 'codigo_barras'
    DataSource = DataSource3
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 184
    Top = 208
    Width = 108
    Height = 23
    DataField = 'nome_produto'
    DataSource = DataSource3
    TabOrder = 6
  end
  object DBEdit5: TDBEdit
    Left = 184
    Top = 256
    Width = 72
    Height = 23
    DataField = 'preco_unitario'
    DataSource = DataSource3
    TabOrder = 5
  end
  object conectionvenda: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=Postg' +
      'reSQL30;Initial Catalog=estacionamento'
    LoginPrompt = False
    Left = 1088
    Top = 96
  end
  object DataSource2: TDataSource
    Left = 1160
    Top = 136
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=Postg' +
      'reSQL30;Initial Catalog=bolobd'
    LoginPrompt = False
    Left = 1080
    Top = 456
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT mes, quantia'
      '  FROM public.sales;')
    Left = 984
    Top = 336
    object ADOQuery1mes: TStringField
      FieldName = 'mes'
      FixedChar = True
      Size = 15
    end
    object ADOQuery1quantia: TStringField
      FieldName = 'quantia'
      FixedChar = True
      Size = 6
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 1160
    Top = 264
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = conectionvenda
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT id_transacao, codigo_barras, nome_produto, preco_unitario' +
        ', quantidade, '
      '       preco_total, data_hora, sessao_id'
      '  FROM public.vendass;')
    Left = 520
    Top = 444
    object ADOQuery2id_transacao: TAutoIncField
      DisplayLabel = 'ID TRANSA'#199
      FieldName = 'id_transacao'
      ReadOnly = True
    end
    object ADOQuery2codigo_barras: TStringField
      DisplayLabel = 'CODIGO DE BARRAS'
      DisplayWidth = 25
      FieldName = 'codigo_barras'
      Size = 50
    end
    object ADOQuery2nome_produto: TStringField
      DisplayLabel = 'PRODUTO'
      DisplayWidth = 25
      FieldName = 'nome_produto'
      Size = 255
    end
    object ADOQuery2preco_unitario: TBCDField
      DisplayLabel = 'PRE'#199'O UNITARIO'
      FieldName = 'preco_unitario'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object ADOQuery2data_hora: TDateTimeField
      DisplayLabel = 'DATA E HORA'
      FieldName = 'data_hora'
    end
    object ADOQuery2sessao_id: TIntegerField
      DisplayLabel = 'SESSS'#195'O ID'
      FieldName = 'sessao_id'
    end
    object ADOQuery2quantidade: TIntegerField
      DisplayLabel = 'QUANTIDADE'
      FieldName = 'quantidade'
    end
    object ADOQuery2preco_total: TBCDField
      DisplayLabel = 'PRE'#199'O TOTAL'
      FieldName = 'preco_total'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery2
    Left = 1176
    Top = 344
  end
end
