import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatelessWidget {
  MyProfilePage({super.key});

  final String nome = "Eduardo Silva Rodrigues";
  final String email = "eduardodev8@gmail.com";
  final String localizacao = "Paraná, Brasil";
  final List<String> habilidades = <String>[
    "Java",
    "Spring",
    "Git",
    "Javascript",
    "Python",
    "HTML",
    "CSS",
    "Dart",
    "Flutter",
    "SQL"
  ];
  final String imagem =
      "https://paraibaon.com.br/wp-content/uploads/2022/05/guaxininanjnd_widelg.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile App"),
        backgroundColor: Colors.white,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.black),
      ),
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
                child: Stack(
              children: [
                Container(
                  color: Colors.blue,
                  height: 180,
                ),
                Positioned(
                    top: 40,
                    left: 150,
                    child: Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://th.bing.com/th/id/OIP.0lHYSgYIxJp7iNuFdJ-9aQHaEK?w=270&h=180&c=7&r=0&o=5&pid=1.7'),
                                fit: BoxFit.cover))))
              ],
            ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.person,
              color: Colors.blue,
              size: 20,
              semanticLabel: "Nome do usuário",
            ),
            Text(nome,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
          ],
        ),
        Row(
          textDirection: TextDirection.ltr,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.map,
              color: Colors.blue,
              size: 20,
              semanticLabel: "Localização do usuário",
            ),
            Text(
              localizacao,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.email,
              color: Colors.blue,
              size: 20,
              semanticLabel: "Email do usuário",
            ),
            Text(email,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
          ],
        )
      ])),
    );
  }
}
