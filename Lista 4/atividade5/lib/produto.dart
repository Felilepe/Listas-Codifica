class Produto 
{
  late String _codigo;
  late String _nome;
  late double _preco;
  
  Produto
  (
    {
      required String codigo,
      required String nome,
      required double preco,
    }
  )
  
  {
    _codigo = codigo;
    _nome = nome;
    _preco = preco;
  }

  double get preco 
  {
    return _preco;
  }
  String get codigo
  {
    return _codigo;
  }
  String get nome
  {
    return _nome;
  }

  set preco(double novoPreco)
  {
    if(novoPreco < 0)
    {
      print("ERRO: Valor não pode ser negativo. Valor original mantido");
    }
    else
    {
      _preco = novoPreco;
    }
  }

  void aplicarDesconto(double percentual)
  {
    if(percentual <= 0)
    {
      preco = preco;
      print("\nNenhum desconto aplicado\n");
    }
    else
    {
      preco -= (preco * (percentual/100));
      String percentualFormatado = percentual.toStringAsFixed(0);
      print("\nDesconto de $percentualFormatado% aplicado\n");
    }
  }
  
  void exibirDetalhes()
  {
    String precoFormatado = preco.toStringAsFixed(2);
    print("---Detalhes do produto---\nNome: $nome\nCódigo: $codigo\nPreço: R\$ $precoFormatado\n");
  } 

  
}
