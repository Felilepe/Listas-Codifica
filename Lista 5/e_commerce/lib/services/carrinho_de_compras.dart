  import "package:e_commerce/models/produto.dart";
  import "package:e_commerce/models/prod_eletronico.dart";
  import "package:e_commerce/models/prod_alimento.dart";  

  class CarrinhoDeCompras {
    List<Produto> listaProduto = [];
    double total = 0;

    CarrinhoDeCompras
    ();  
    
    void adicionarProduto(Produto p) => listaProduto.add(p);

    void calcularTotal() 
    {
      total = 0;
      for (Produto produto in listaProduto) 
      {
        total += produto.preco;
      }
    }

    void exibirCarrinho() 
    {
      calcularTotal();
      print("-----Itens no Carrinho-----");
      for (Produto produto in listaProduto) 
      {
        String precoFormatado = produto.preco.toStringAsFixed(2);
        print("- ${produto.nome}: R\$$precoFormatado");
      }
      String totalFormatado = total.toStringAsFixed(2);
      print("---------------------------\n");
      print("Total do Carrinho: R\$$totalFormatado");
    }

    Map<String, dynamic> toJson() 
    {
      return 
      {
        'produtos': listaProduto.map((p) => p.toJson()).toList(),
      };
    }

    factory CarrinhoDeCompras.fromJson(List<dynamic> jsonLista) 
    {
      CarrinhoDeCompras carrinho = CarrinhoDeCompras();

      for (var item in jsonLista) 
      {
        switch (item['tipo']) 
        {
          case 'Eletrônico':
            carrinho.adicionarProduto(ProdutoEletronico.fromJson(item));
            break;
          case 'Alimentício':
            carrinho.adicionarProduto(ProdutoAlimenticio.fromJson(item));
            break;
          default:
            break;
        }
      }

      return carrinho;
    }
  }
