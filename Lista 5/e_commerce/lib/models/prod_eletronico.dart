import "package:e_commerce/mixins/rastreavel.dart";
import "package:e_commerce/models/produto.dart";

class ProdutoEletronico extends Produto with Rastreavel
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
  get tipo
  {
    return "Eletrônico";
  }

  @override
  exibirDetalhes()
  {
    String precoFormatado = preco.toStringAsFixed(2);
    print("---Detalhes do produto---\nNome: $nome\nCódigo: $codigo\nPreço: R\$ $precoFormatado\nGarantia: $garantiaMeses meses\n");
  } 


  Map<String, dynamic> toJson() 
  {
    return 
    {
      'tipo': tipo,
      'nome': nome,
      'codigo': codigo,
      'preco': preco,
      'garantiaMeses': garantiaMeses,
    };
}

  factory ProdutoEletronico.fromJson(Map<String, dynamic> json) 
  {
    return ProdutoEletronico
    (
      nome: json['nome'],
      codigo: json['codigo'],
      preco: json['preco'],
      garantiaMeses: json['garantiaMeses'],
    );
  }



}