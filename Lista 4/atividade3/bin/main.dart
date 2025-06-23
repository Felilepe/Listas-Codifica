import "package:atividade1/produto.dart";
void main() 
{
  Produto produto = Produto(nome: "Relógio de Luxo", codigo: "12345", preco: 1250.00);

  produto.preco = -100;
  print("Preço atual: ${produto.preco}");

  produto.preco = 700;
  print("Preço atualizado: ${produto.preco}");
}

