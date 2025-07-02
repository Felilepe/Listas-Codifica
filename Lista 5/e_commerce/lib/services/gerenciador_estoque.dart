import 'package:e_commerce/models/produto.dart';

class GerenciadorEstoque 
{
  Map<String, int> estoque = {};

  void adicionarEstoque(Produto produto, int quantidade) 
  {
    if (estoque.containsKey(produto.codigo)) 
    {
      estoque[produto.codigo] = estoque[produto.codigo]! + quantidade;
    } 
    else 
    {
      estoque[produto.codigo] = quantidade;
    }
  }

  void exibirEstoque() 
  {
    print("--- Inventário Atual ---");
    estoque.forEach((codigo, quantidade) 
    {
      print("[$codigo]: $quantidade unidades");
    });
    print("------------------------");
  }


  bool temProduto(String codigoProduto) 
  {
    return estoque.containsKey(codigoProduto);
  }
}
