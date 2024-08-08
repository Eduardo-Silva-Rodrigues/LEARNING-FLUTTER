import 'dart:math';

void main() {
  for (int i = 0; i <= 10; i++) {
    // print(i + 1);
  }


  var notas = [9.8, 6.7, 6.2, 8.7, 8.1];

  for (var nota in notas) {
    // print(nota);
  }

  Map<int, String> alunos = {
    123: 'Matheus',
    124: 'Gilberto',
    125: 'Windersson',
    126: 'Juriscleide',
    127: 'Afterlife'
  };

  for (var entry in alunos.entries) {
    print("RA: ${entry.key} ### Nome do aluno: ${entry.value}");
  }

  print("Fim");
}