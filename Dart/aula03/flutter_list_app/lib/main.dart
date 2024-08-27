import 'package:flutter/material.dart';
import 'package:flutter_list_app/scream/tarefa_lista.dart';

void main() => runApp(ListaTarefaApp());

class ListaTarefaAppState extends State<ListaTarefaApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(appBar: AppBar(title: 'Dsad'), home: TarefaLista());
  }
}

class ListaTarefaApp extends StatefulWidget {
  @override
  ListaTarefaAppState createState() {
    return ListaTarefaAppState();
  }
}
