
import "package:e_commerce/models/produto.dart";

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
  get tipo
  {
    return "Alimentício";
  }
  
  @override
  exibirDetalhes()
  {
    String precoFormatado = preco.toStringAsFixed(2);
    print("---Detalhes do produto---\nNome: $nome\nCódigo: $codigo\nPreço: R\$ $precoFormatado\nValidade: $dataValidade");
  } 

  Map<String, dynamic> toJson() 
  {
    return 
    {
      'tipo': tipo,
      'nome': nome,
      'codigo': codigo,
      'preco': preco,
      'validade': dataValidade.toString(),
    };
  }

  factory ProdutoAlimenticio.fromJson(Map<String, dynamic> json) 
  {
    return ProdutoAlimenticio
    (
      nome: json['nome'],
      codigo: json['codigo'],
      preco: json['preco'],
      dataValidade: json['validade'],
    );
  }


}