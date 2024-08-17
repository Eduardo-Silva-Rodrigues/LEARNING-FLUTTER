import '../interfaces/skills.dart';

abstract class Classe extends Skills {
  String? _nomeClasse;
  int? _vida;
  int? _ataque;
  int? _defesa;
  String? _estilo;

  Classe(
      {required String? nomeClasse,
      int vida = 0,
      int ataque = 0,
      int defesa = 0,
      String estilo = 'N/a'}) {
    this._nomeClasse = nomeClasse;

    switch (nomeClasse) {
      case "Guerreiro":
        this._nomeClasse = nomeClasse;
        this._vida = 20;
        this._ataque = 6;
        this._defesa = 5;
        this._estilo = "Corpo-a-corpo";
        break;
      case "Arqueiro":
        this._vida = 15;
        this._ataque = 6;
        this._defesa = 4;
        this._estilo = "Longo alcance";
        break;
      case "Mago":
        this._vida = 15;
        this._ataque = 7;
        this._defesa = 3;
        this._estilo = "Longo alcance";
        break;
      case "Paladino":
        this._vida = 20;
        this._ataque = 6;
        this._defesa = 6;
        this._estilo = "Corpo-a-corpo";
        break;
    }
  }

  String get getNomeClasse => this._nomeClasse!;
  int get getVida => this._vida!;
  int get getAtaque => this._ataque!;
  int get getDefesa => this._defesa!;
  String get getEstilo => this._estilo!;

  void set setNomeClasse(String nomeClasse) {
    this._nomeClasse = nomeClasse;
  }

  void set setVida(int vida) {
    this._vida = vida;
  }

  void set setAtaque(int ataque) {
    this._ataque = ataque;
  }

  void set setDefesa(int defesa) {
    this._defesa = defesa;
  }

  void set setEstilo(String estilo) {
    this._estilo = estilo;
  }
}
