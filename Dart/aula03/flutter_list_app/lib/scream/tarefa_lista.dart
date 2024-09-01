import 'package:flutter/material.dart';
import '../widgets/tarefa_botao.dart';
import 'package:flutter_list_app/scream/tarefa_lista.dart';

void main() => runApp(ListaTarefaApp());

class ListaTarefaAppState extends State<ListaTarefaApp> {
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  void metodo() {

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text('Lista de tarefas', style: TextStyle(color: Colors.white)),
                backgroundColor: Colors.blueAccent
            ),
            body: Center(
              child: Column(
                children: [
                  //   >> Lista de tarefas! <<
                  Expanded(
                      child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index){
                        return ListTile(
                            title: Text(items[index])
                        );
                      })
                  ),
                  Botao()
                ],
              ),
            )

        ));
  }
}

class ListaTarefaApp extends StatefulWidget {
  @override
  ListaTarefaAppState createState() {
    return ListaTarefaAppState();
  }
}
