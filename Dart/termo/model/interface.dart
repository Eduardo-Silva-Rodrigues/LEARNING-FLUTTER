import 'sorteio.dart';
import 'checagem.dart';
import 'dart:io';


class Interface {
  Sorteio sorteio = Sorteio();
  Checagem checagem = Checagem();
 
  void interface() {
    final String palavraSorteada = this.sorteio.sorteio();

    print("Digite uma palavra de 5 letras:");
    String? tentativa = stdin.readLineSync();

    checagem.verificar(tentativa!);
  }
}