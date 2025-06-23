
import "package:atividade1/carrinho_de_compras.dart";
import "package:atividade1/prod_alimento.dart";
import "package:atividade1/prod_eletronico.dart";

void main() 
{
  var eletronico = ProdutoEletronico(nome: "Liquidificador", codigo: "11111", preco: 230.00, garantiaMeses: 18);
  var alimento = ProdutoAlimenticio(nome: "Banana", codigo: "22222", preco: 5.0, dataValidade: "30/06/2025");

  var carrinho = CarrinhoDeCompras();

  carrinho.adicionarProduto(eletronico);
  carrinho.adicionarProduto(alimento);

  eletronico.exibirDetalhes();
  print("");
  alimento.exibirDetalhes();
}

