import 'dart:io';

void main() {
  const double pi = 3.1415;
  final double raio;

  print("Qual o raio:");
  raio = double.parse(stdin.readLineSync()!);

  double resultado = (2 * pi) * raio;

  print("A circunferência é de: ${resultado}");
}