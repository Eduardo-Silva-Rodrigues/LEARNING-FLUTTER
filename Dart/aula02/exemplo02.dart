import 'dart:io';

void main() {
  String entrada = '';

  while (entrada != 'sair') {
    stdout.write('Quer sair do programa?');
    entrada = stdin.readLineSync().toString();
  }
}