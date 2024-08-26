import 'package:flutter/material.dart';
import 'package:flutter_list_app/questao.dart';

void main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var numeroDeTarefas = 0;

  void responder() {
    setState(() {
      numeroDeTarefas++;
      print('Respondido');
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> perguntas = [
      'Quem é o mais inteligente da sala?',
      'Qual a materia mais legal?'
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('LISTA DE TAREFAS'),
        backgroundColor: Color.fromARGB(255, 10, 207, 164),
      ),
      body: GridView.count(
          crossAxisCount: 1,
          children: <Widget>[
            ...List.generate(10, (index) {
              return Center(
              child: Text('Text'),
              );
            })
          ],
      ),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
