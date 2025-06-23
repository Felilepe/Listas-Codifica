class Produto 
{
  String codigo;
  String nome;
  double preco;
  
  Produto
  (
    {
      required this.codigo,
      required this.nome,
      required this.preco,
    }
  );

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
