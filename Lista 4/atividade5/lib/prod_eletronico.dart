import "package:atividade1/produto.dart";

class ProdutoEletronico extends Produto
{
  int garantiaMeses;

ProdutoEletronico
(
  {
    required super.nome,
    required super.codigo,
    required super.preco,
    required this.garantiaMeses,
  }
);

@override
void exibirDetalhes()
  {
    String precoFormatado = preco.toStringAsFixed(2);
    print("---Detalhes do produto---\nNome: $nome\nCódigo: $codigo\nPreço: R\$ $precoFormatado\nGarantia: $garantiaMeses meses");
  } 

}