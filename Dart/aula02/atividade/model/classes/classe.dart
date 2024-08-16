import '../interfaces/skills.dart';

abstract class Classe extends Skills {
  String? _nomeClasse;
  int? _vida;
  int? _ataque;
  int? _defesa;
  String? _estilo;

  Classe(
      {String nomeClasse = "N/a",
      int vida = 0,
      int ataque = 0,
      int defesa = 0,
      String estilo = 'N/a'}) {
    if (nomeClasse == "Guerreiro") {
      this._nomeClasse = nomeClasse;
      this._vida = 20;
      this._ataque = 6;
      this._defesa = 5;
      this._estilo = "Corpo-a-corpo";
    }

    if (nomeClasse == "Arqueiro") {
      this._vida = 15;
      this._ataque = 6;
      this._defesa = 4;
      this._estilo = "Longo alcance";
    }

    if (nomeClasse == "Mago") {
      this._vida = 15;
      this._ataque = 7;
      this._defesa = 3;
      this._estilo = "Longo alcance";
    }

    if (nomeClasse == "Paladino") {
      this._vida = 20;
      this._ataque = 6;
      this._defesa = 6;
      this._estilo = "Corpo-a-corpo";
    }
  }

  String getNomeClasse() {
    return this._nomeClasse!;
  }

  int getVida() {
    return this._vida!;
  }

  int getAtaque() {
    return this._ataque!;
  }

  int getDefesa() {
    return this._defesa!;
  }

  String getEstilo() {
    return this._estilo!;
  }

  void setNomeClasse(String nomeClasse) {
    this._nomeClasse = nomeClasse;
  }

  void setVida(int vida) {
    this._vida = vida;
  }

  void setAtaque(int ataque) {
    this._ataque = ataque;
  }

  void setDefesa(int defesa) {
    this._defesa = defesa;
  }

  void setEstilo(String estilo) {
    this._estilo = estilo;
  }
}
