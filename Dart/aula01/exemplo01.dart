void main() {
  int idade = 25;
  double altura = 1.78;
  String nome = "Matheus";
  bool souBonito = true;

  dynamic qualMeuValor = "123";
  qualMeuValor = true;

  List<String> nomes = ["Eduardo", "Gustavo", "Lucas", "Flavin do pneu"];

  Map<String, dynamic> registroCliente = {
    "Nome": "Eduardo",
    "FormaPag.": "Débito",
    "Valor_Compra": 100
  };

  Set<String> listaNomes = {"Eduardo", "Gustavo", "Lucas", "Flavin do pneu"};

  print(listaNomes);
}
