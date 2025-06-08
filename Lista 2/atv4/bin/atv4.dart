
void main() {
  double celsius = 10;
  final double convf, convc;
  const double num = 32, mult = 9/5, div = 5/9;
  convf = (celsius * mult) + num;
  convc = (convf - num) * div;
  final String convfformatado = convf.toStringAsFixed(2);
  final String convcformatado = convc.toStringAsFixed(2);
  print("Temperatura Celsius original: $celsius");
  print("Convertido para Fahrenheit: $convfformatado");
  print("Convertido de volta a Celsius: $convcformatado");
}
