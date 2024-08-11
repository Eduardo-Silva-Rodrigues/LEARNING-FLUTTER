import 'classe.dart';
import 'item.dart';

class Personagem extends Classe {
  String nomePersonagem;
  Item? equipamento;
  double experiencia;

  Personagem(String nomeClass,
      {this.nomePersonagem = "N/a",
      this.equipamento = null,
      this.experiencia = 0.0})
      : super(nome: nomeClass);

  String getNome() {
    return this.nomePersonagem;
  }

  Item? getEquipamento() {
    return this.equipamento;
  }

  double getExperiencia() {
    return this.experiencia;
  }

  void setNome(String nomePersonagem) {
    this.nomePersonagem = nomePersonagem;
  }

  void setEquipamento(Item equipamento) {
    this.equipamento = equipamento;
  }

  void setExperiencia(double exp) {
    this.experiencia = exp;
  }
}

void main() {
  Personagem pp = Personagem("Guerreiro");

  print(pp.getAtaque());
}
