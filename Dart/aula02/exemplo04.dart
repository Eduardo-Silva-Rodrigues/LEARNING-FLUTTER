void main() {
  String valor = somar(valor2: 5, valor1: 7);

  print(valor);
}

String somar({int valor1 = 2, int valor2 = 2}) {
  return "A soma dos valores são: ${valor1 + valor2}";
}
