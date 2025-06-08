import 'dart:io';

void main(List<String> arguments) {
  String? num1, num2;
  double x, y, soma, sub, mult, div, media, resto;
  print("Insira  um número: ");
  num1 = stdin.readLineSync() ?? '1';
  print("Insira outro número: ");
  num2 = stdin.readLineSync() ?? '1';
  x = double.tryParse(num1) ?? 1;
  y = double.tryParse(num2) ?? 1;
  
  soma = x + y;
  sub = x - y;
  mult = x * y;
  div = x / y;
  resto = x % y;
  media = (x + y) / 2;

  print("Número 1: $num1");
  print("númeor 2: $num2");
  print("Soma: $soma");
  print("Subtração: $sub");
  print("Multiplicação: $mult");
  print("Divisão: $div");
  print("Resto da divisão: $resto");
  print("Média aritmética: $media");
}
