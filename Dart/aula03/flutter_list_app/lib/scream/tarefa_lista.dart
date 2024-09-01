import 'package:flutter/material.dart';
import '../model/tarefa.dart';
import '../widgets/tarefa_item.dart';

void main() => runApp(ListaTarefaApp());

class ListaTarefaAppState extends State<ListaTarefaApp> {
  bool visivel = false;
  TextEditingController controller = TextEditingController();
  List<Tarefa> tarefas = [];

  void alterarVisibilidade() {
    setState(() {
      visivel = !visivel;
    });
  }

  void adicionarTarefa() {
    if (controller.text.isNotEmpty) {
      setState(() {
        tarefas.add(Tarefa(controller.text, false));
        controller.clear();
        visivel = false;
      });
    }
  }

  void alternarConcluida(Tarefa tarefa, bool? concluida) {
    setState(() {
      tarefa.concluida = concluida ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text('Lista de tarefas', style: TextStyle(color: Colors.white)),
                backgroundColor: Colors.blueAccent
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: tarefas.length,
                    itemBuilder: (context, index) {
                      return TarefaItem(
                        tarefa: tarefas[index],
                        check: (concluida) => alternarConcluida(tarefas[index], concluida),
                      );
                    },
                  ),
                ),
                if (visivel)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        labelText: 'Nova Tarefa',
                        suffixIcon: IconButton(
                          icon: Icon(Icons.check),
                          onPressed: adicionarTarefa,
                        ),
                      ),
                    ),
                  ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                      onPressed: alterarVisibilidade,
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        backgroundColor: Colors.blueAccent,
                      ),
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
              ],
            ),
        )
    );
  }
}

class ListaTarefaApp extends StatefulWidget {
  @override
  ListaTarefaAppState createState() {
    return ListaTarefaAppState();
  }
}
