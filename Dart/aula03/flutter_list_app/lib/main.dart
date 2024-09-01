import 'package:flutter/material.dart';
import 'package:flutter_list_app/model/tarefa.dart';
import 'widgets/tarefa_botao.dart';
import 'scream/tarefa_lista.dart';

void main() => runApp(ListaTarefaApp());

class MainAppState extends State<MainApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ListaTarefaApp()
    );
  }
}

class MainApp extends StatefulWidget {
  @override
  MainAppState createState() {
    return MainAppState();
  }
}
