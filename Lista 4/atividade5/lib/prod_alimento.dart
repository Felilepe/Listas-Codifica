import "package:atividade1/produto.dart";

class ProdutoAlimenticio extends Produto
{
  String dataValidade;

ProdutoAlimenticio
(
  {
    required super.nome,
    required super.codigo,
    required super.preco,
    required this.dataValidade,
  }
);

@override
void exibirDetalhes()
  {
    String precoFormatado = preco.toStringAsFixed(2);
    print("---Detalhes do produto---\nNome: $nome\nCódigo: $codigo\nPreço: R\$ $precoFormatado\nValidade: $dataValidade");
  } 

}