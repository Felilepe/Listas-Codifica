import 'dart:io';

void main() {
  String nome, endereco, idade;

  print("Insira seu nome: ");
  nome = stdin.readLineSync() ?? 'Fulano';
  print("Insira sua idade");
  idade = stdin.readLineSync() ?? 'alguns';
  print("Insira seu endereço: ");
  endereco = stdin.readLineSync() ?? 'esquina';
  print("Meu nome é $nome, eu tenho $idade anos e meu endereço é $endereco");

}
