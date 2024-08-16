import '../classes/personagem.dart';

abstract class Skills {
  void ataqueLeve(Personagem inimigo) {}
  void ataquePesado(Personagem inimigo) {}
  void ataqueEspecial(Personagem inimigo) {}
  void esquiva(Personagem inimigo) {}
}
