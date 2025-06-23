import "package:atividade1/produto.dart";
void main() 
{
  Produto produto1 = Produto(nome: "Macarrão", codigo: "12345", preco: 5.99);
  Produto produto2 = Produto(nome: "Arroz", codigo: "67890", preco: 14.99);

  print("---Produto 1---\nNome: ${produto1.nome}\nCódigo: ${produto1.codigo}\nPreço: R\$ ${produto1.preco}");
  print("---Produto 2---\nNome: ${produto2.nome}\nCódigo: ${produto2.codigo}\nPreço: R\$ ${produto2.preco}");
}
