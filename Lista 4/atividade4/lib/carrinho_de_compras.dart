import "package:atividade1/produto.dart";

class CarrinhoDeCompras 
{
  List<Produto> listaProduto = [];
  double total = 0;

void adicionarProduto(Produto p) => listaProduto.add(p);

void calcularTotal()
{
  total = 0;
  for(int i = 0; i < listaProduto.length; i++)
  {
    total += listaProduto[i].preco;
  }
  

}

void exibirCarrinho()
{
  calcularTotal();
  print("-----Itens no Carrinho-----");
  for(int i = 0; i < listaProduto.length; i++)
  {
    String precoFormatado = listaProduto[i].preco.toStringAsFixed(2);
    print("-${listaProduto[i].nome}: R\$$precoFormatado");
  }
  String totalFormatado = total.toStringAsFixed(2);
  print("---------------------------\n");
  print("Total do Carrinho: R\$$totalFormatado");
}

}


