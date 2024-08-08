import 'dart:io';

void main() {
  final double pi;

  pi = double.parse(stdin.readLineSync()!);

  if (pi == 3.1415) {
    print("Valor do PI correto");
  } else if (pi < 3.1415) {
    print("Valor é maior!");
  } else {
    print("Valor é menor!");
  }
}