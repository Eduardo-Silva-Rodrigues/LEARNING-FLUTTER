class Classe {
  String nomeC;
  int vida;
  int ataque;
  int defesa;
  String estilo;

  Classe(
      {this.nomeC = "null",
      this.vida = 0,
      this.ataque = 0,
      this.defesa = 0,
      this.estilo = 'N/a'}) {
    if (this.nomeC == "Guerreiro") {
      this.vida = 20;
      this.ataque = 6;
      this.defesa = 5;
      this.estilo = "Corpo-a-corpo";
    }

    if (this.nomeC == "Arqueiro") {
      this.vida = 15;
      this.ataque = 6;
      this.defesa = 4;
      this.estilo = "Longo alcance";
    }

    if (this.nomeC == "Mago") {
      this.vida = 15;
      this.ataque = 7;
      this.defesa = 3;
      this.estilo = "Longo alcance";
    }

    if (this.nomeC == "Paladino") {
      this.vida = 20;
      this.ataque = 6;
      this.defesa = 6;
      this.estilo = "Corpo-a-corpo";
    }
  }

  String getNomeClasse() {
    return this.nomeC;
  }

  int getVida() {
    return this.vida;
  }

  int getAtaque() {
    return this.ataque;
  }

  int getDefesa() {
    return this.defesa;
  }

  String getEstilo() {
    return this.estilo;
  }

  void setNomeClasse(String nomeC) {
    this.nomeC = nomeC;
  }

  void setVida(int vida) {
    this.vida = vida;
  }

  void setAtaque(int ataque) {
    this.ataque = ataque;
  }

  void setDefesa(int defesa) {
    this.defesa = defesa;
  }

  void setEstilo(String estilo) {
    this.estilo = estilo;
  }
}
