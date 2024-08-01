import 'dart:io';

void main() {
  final double ladoTriangulo01;
  print("Informe o primeiro lado do triângulo: ");
  ladoTriangulo01 = double.parse(stdin.readLineSync()!);

  final double ladoTriangulo02;
  print("Informe o segundo lado do triângulo: ");
  ladoTriangulo02 = double.parse(stdin.readLineSync()!);

  final double ladoTriangulo03;
  print("Informe o terceiro lado do triângulo: ");
  ladoTriangulo03 = double.parse(stdin.readLineSync()!);

  if (ladoTriangulo01 + ladoTriangulo02 > ladoTriangulo03) {
    print("Triângulo");
  }

  if (ladoTriangulo01 != ladoTriangulo02 &&
      ladoTriangulo02 != ladoTriangulo03 &&
      ladoTriangulo01 != ladoTriangulo03) {
    print("Triângulo escaleno");
  } else if (ladoTriangulo01 == ladoTriangulo02 &&
      ladoTriangulo02 == ladoTriangulo03) {
    print("Triângulo equilatero");
  } else if (ladoTriangulo01 == ladoTriangulo02 ||
      ladoTriangulo02 == ladoTriangulo03 ||
      ladoTriangulo03 == ladoTriangulo01) {
    print("Triângulo isósceles");
  } else {
    print("Não é um triângulo!");
  }
}
