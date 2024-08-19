import '../classes/menu.dart';
import '../classes/personagem.dart';

void main() {
  Menu jogo = Menu();
  Personagem? p = jogo.iniciarJogo();
  print(p!.getNome);
  print(p.getNomeClasse);
  print(p.getEquipamentos);
}
