class Item {
  String nome;
  int dano;
  int durabilidade;
  int defesa;
  String alcance;

  Item(
      {this.nome = "N/a",
      this.dano = 0,
      this.durabilidade = 0,
      this.defesa = 0,
      this.alcance = "N/a"}) {
    if (this.nome == "Escudo") {
      this.dano = 0;
      this.durabilidade = 10;
      this.defesa = 2;
      this.alcance = "Curto";
    }
    if (this.nome == "Espada") {
      this.dano = 2;
      this.durabilidade = 10;
      this.defesa = 0;
      this.alcance = "Curto";
    }
    if (this.nome == "Arco") {
      this.dano = 2;
      this.dano = 8;
      this.defesa = 0;
      this.alcance = "Longo";
    }
    if (this.nome == "Lança") {
      this.dano = 2;
      this.durabilidade = 8;
      this.defesa = 0;
      this.alcance = "Médio";
    }
  }
}
