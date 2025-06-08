import 'dart:io';
void exibirTabuada(int x) //A função não retorna nada ao main
{
  int resultado;
  for(int i = 1; i <= 10; i++) //O i no loop servirá de multiplicador
  {
    resultado = x * i;
    print("$x X $i = $resultado"); //print direto na função
  }
}

void main() //Função main servirá apenas para escolher a tabuada
{
  int opcao;
  String? opcaoS;
  print("Escolha um número para ver a tabuada: ");
  opcaoS = stdin.readLineSync() ??'0';
  opcao = int.tryParse(opcaoS) ?? 0;
  exibirTabuada(opcao);
}
