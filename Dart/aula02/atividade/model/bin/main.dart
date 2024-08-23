import '../classes/menu.dart';
import '../classes/jogo.dart';
import '../classes/personagem.dart';

void main() {
  Menu menu = Menu();
  Personagem? personagemJogador = menu.iniciarJogo();
  Jogo jogo = Jogo();
  jogo.setPersonagemJogador = personagemJogador;
  jogo.iniciarCombate();
}
