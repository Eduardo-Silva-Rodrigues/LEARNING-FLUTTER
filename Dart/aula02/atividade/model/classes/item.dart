class Item {
  String? _nome;
  int? _dano;
  int? _durabilidade;
  int? _defesa;
  String? _alcance;

  Item(
      {required String nome,
      int dano = 0,
      int durabilidade = 0,
      int defesa = 0,
      String alcance = "N/a"}) {
    this._nome = nome;
    if (this._nome == "Escudo") {
      this._dano = 0;
      this._durabilidade = 9;
      this._defesa = 2;
      this._alcance = "Curto";
    } else if (this._nome == "Espada") {
      this._dano = 2;
      this._durabilidade = 10;
      this._defesa = 0;
      this._alcance = "Curto";
    } else if (this._nome == "Arco") {
      this._dano = 2;
      this._durabilidade = 8;
      this._defesa = 0;
      this._alcance = "Longo";
    } else if (this._nome == "Lança") {
      this._dano = 2;
      this._durabilidade = 8;
      this._defesa = 0;
      this._alcance = "Médio";
    }
  }

  String get getNome => this._nome!;
  int get getDano => this._dano!;
  int get getDurabilidade => this._durabilidade!;
  int get getDefesa => this._defesa!;
  String get getAlcance => this._alcance!;

  void set setNome(String nome) => this._nome = nome;
  void set setDano(int dano) => this._dano = dano;
  void set setDurabilidade(int durabilidade) =>
      this._durabilidade = durabilidade;
  void set setDefesa(int defesa) => this._defesa = defesa;
  void set setAlcance(String alcance) => this._alcance = alcance;
}
