import 'dart:io';

int intscan(String? x)
{
  x = stdin.readLineSync() ?? '0';
  return int.tryParse(x) ?? 0;
}

double media(int x, int y, int z)
{
double resultado;
  if(x < 0 || x > 10 || y < 0 || y > 10 || z < 0 || z > 10)
  {
    return -1;
  }
  else
  {
    resultado = (x + y + z) / 3;
  }
  return resultado;
}
void main(List<String> arguments) 
{
  String? n1s, n2s, n3s;
  int nota1, nota2, nota3;
  double resultado;
  print("insira a primeira nota: ");
  nota1 = intscan(n1s);
  print("insira a segunda nota: ");
  nota2 = intscan(n2s);
  print("insira a terceira nota: ");
  nota3 = intscan(n3s);
  resultado = media(nota1, nota2, nota3);
  String resultadoFormatado = resultado.toStringAsFixed(2); 
  if(resultado < 0)
  {
    print("Uma ou mais notas inválidas, as notas devem estar entre 0 e 10");
  }
  else
  {
    print("A média aritméticas das notas $nota1, $nota2 e $nota3 é: $resultadoFormatado\n");
  }
 

}
