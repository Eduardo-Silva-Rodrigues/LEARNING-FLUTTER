import 'dart:math';

class Sorteio {
  List<String> palavras = ["revés ","denso","neném","pudor","todos","jeito","dogma","louco","regra","atrás","ordem","mercê","clava","homem","feliz","pedir","impor","banal","round"];
  Random r = new Random();

  String sorteio() {
    String resultado = palavras[r.nextInt(palavras.length)];

    if (resultado != resultado){
      resultado = palavras [r.nextInt(palavras.length)];
    }
    
    return resultado;
  }
}