import 'package:flutter/material.dart';
import 'package:flutter_list_app/questao.dart';

void main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
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
        title: const Text('Minhas perguntas'),
        backgroundColor: Color.fromARGB(255, 10, 207, 164),
      ),
      body: Column(
        children: [
          Questao(perguntas.elementAt(perguntaSelecionada)),
          ElevatedButton(onPressed: responder, child: Text('Resposta 1')),
          ElevatedButton(onPressed: responder, child: Text('Resposta 2')),
          ElevatedButton(onPressed: responder, child: Text('Resposta 3')),
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
