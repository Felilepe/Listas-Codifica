import 'dart:io';

void main() {
  String? orcastring, i1s, i2s, i3s;
  final double orcamento;
  double i1, i2, i3;
  print("Insira seu orçamento:");
  orcastring = stdin.readLineSync() ?? '0';
  orcamento = double.tryParse(orcastring) ?? 0; 
  print("Digite o preço do item 1:");
  i1s = stdin.readLineSync() ?? '0';
  i1 = double.tryParse(i1s) ?? 0;
  print("Digite o preço do item 2:");
  i2s = stdin.readLineSync() ?? '0';
  i2 = double.tryParse(i2s) ?? 0;
  print("Digite o preço do item 3:");
  i3s = stdin.readLineSync() ?? '0';
  i3 = double.tryParse(i3s) ?? 0;

  if((i1 + i2 + i3) < orcamento){
    print("Dentro do orçamento!");
  } else{
    print("Orçamento estourad!");
  }
}
