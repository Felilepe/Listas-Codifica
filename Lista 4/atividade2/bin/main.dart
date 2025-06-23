import "package:atividade1/produto.dart";
import "dart:io";
void main() 
{
  Produto produto = Produto(nome: "Relógio de Luxo", codigo: "12345", preco: 1250.00);


  produto.exibirDetalhes();

  print("Insira o desconto a ser aplicado");
  String descontoString = stdin.readLineSync() ?? '0';
  double desconto = double.tryParse(descontoString) ?? 0;
  
  produto.aplicarDesconto(desconto);

  if(desconto > 0)
  {
  produto.exibirDetalhes();
  }
}

