
void main() {
String valorA = "25";
String valorB = "50.5";
double a, b;
a = double.tryParse(valorA)!;
b = double.tryParse(valorB)!;
var soma = a + b;
print("A soma de $valorA e $valorB é: $soma");
}
