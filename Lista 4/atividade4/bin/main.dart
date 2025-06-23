
import "package:atividade1/produto.dart";
import "package:atividade1/carrinho_de_compras.dart";

void main() 
{
  Produto p1 = Produto(nome: "Celular", codigo: "11111", preco: 5000.00);
  Produto p2 = Produto(nome: "Fone de Ouvido Bluetooth", codigo: "22222", preco: 250.00);
  Produto p3 = Produto(nome: "Carregador 80W", codigo: "33333", preco: 50.00);

  CarrinhoDeCompras carrinho = CarrinhoDeCompras();
  
  carrinho.adicionarProduto(p1);
  carrinho.adicionarProduto(p2);
  carrinho.adicionarProduto(p3);

  carrinho.exibirCarrinho();
}

