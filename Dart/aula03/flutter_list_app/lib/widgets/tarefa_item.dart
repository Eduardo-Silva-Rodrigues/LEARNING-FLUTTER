import 'package:flutter/material.dart';
import 'package:flutter_list_app/model/tarefa.dart';

class TarefaItem extends StatelessWidget {
  final Tarefa tarefa;
  final ValueChanged<bool?> check;

  TarefaItem({required this.tarefa, required this.check});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(tarefa.nome),
      leading: Checkbox(
        value: tarefa.concluida,
        onChanged: check,
      ),
    );
  }
}