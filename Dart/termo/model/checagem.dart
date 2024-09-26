class Checagem {
  String? palavraSorteada;
  String? tentativa;

  Checagem({this.palavraSorteada = null, this.tentativa = null}); 

  List<List<String>> verificar(String tentativa) {
    List<String> letrasCorretaPosicaoCorreta = [];
    List<String> letrasCorretaPosicaoIncorreta = [];

    for (int i = 0; i < 5; i++) {
      for (int j = 0; j < 5; j++) {
        if (this.palavraSorteada![i] == tentativa[j] && i == j) {
          letrasCorretaPosicaoCorreta.add(tentativa[j]);
        }

        if (this.palavraSorteada![i] == tentativa[j] && i != j) {
          letrasCorretaPosicaoIncorreta.add(tentativa[j]);
        }
      }
    }

    List<List<String>> listaDeResultados = [letrasCorretaPosicaoCorreta, letrasCorretaPosicaoIncorreta];
    
    return listaDeResultados;
  }

}

void main() {
  Checagem a = Checagem(palavraSorteada: "Raios");
  List<List<String>> b = a.verificar("Raios");

  print(b);
}