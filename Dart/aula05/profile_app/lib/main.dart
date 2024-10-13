import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});
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
  final String localizacao2 = "Paraná, Brasil";
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

  void botaoUm() {}
  void botaoDois() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Perfil do Usuário",
          style: TextStyle(fontSize: 24),
        ),
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
                Center(
                    heightFactor: 1.8,
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
        const SizedBox(height: 50),
        Column(
          children: <Widget>[
            Text(nome,
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.email,
                  color: Colors.black38,
                  size: 26,
                  semanticLabel: "Localização do usuário",
                ),
                const SizedBox(width: 5),
                Text(
                  email,
                  style: const TextStyle(fontSize: 24),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(Icons.location_pin,
                    color: Colors.black38,
                    size: 26,
                    semanticLabel: "Email do usuário"),
                const SizedBox(width: 5),
                Text(localizacao, style: const TextStyle(fontSize: 24))
              ],
            ),
            const SizedBox(height: 30),
            const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("Habilidades:",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                )),
            Wrap(
              children: [
                Card(
                    color: const Color.fromARGB(255, 187, 222, 251),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(color: Colors.black)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(habilidades[0],
                            style: const TextStyle(fontSize: 18)))),
                Card(
                    color: const Color.fromARGB(255, 187, 222, 251),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(color: Colors.black)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(habilidades[1],
                            style: const TextStyle(fontSize: 18)))),
                Card(
                    color: const Color.fromARGB(255, 187, 222, 251),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(color: Colors.black)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(habilidades[2],
                            style: const TextStyle(fontSize: 18)))),
                Card(
                    color: const Color.fromARGB(255, 187, 222, 251),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(color: Colors.black)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(habilidades[3],
                            style: const TextStyle(fontSize: 18)))),
                Card(
                    color: const Color.fromARGB(255, 187, 222, 251),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(color: Colors.black)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(habilidades[4],
                            style: const TextStyle(fontSize: 18)))),
                Card(
                    color: const Color.fromARGB(255, 187, 222, 251),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(color: Colors.black)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(habilidades[5],
                            style: const TextStyle(fontSize: 18)))),
                Card(
                    color: const Color.fromARGB(255, 187, 222, 251),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(color: Colors.black)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(habilidades[6],
                            style: const TextStyle(fontSize: 18)))),
                Card(
                    color: const Color.fromARGB(255, 187, 222, 251),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(color: Colors.black)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(habilidades[7],
                            style: const TextStyle(fontSize: 18)))),
                Card(
                    color: const Color.fromARGB(255, 187, 222, 251),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(color: Colors.black)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(habilidades[8],
                            style: const TextStyle(fontSize: 18)))),
                Card(
                    color: const Color.fromARGB(255, 187, 222, 251),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(color: Colors.black)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(habilidades[9],
                            style: const TextStyle(fontSize: 18)))),
              ],
            ),
            const SizedBox(
              height: 200,
            ),
            Row(children: [
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.message),
                        label: const Text("Enviar Mensagem")),
                  )),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.person_add),
                      label: const Text("Seguir"),
                    ),
                  ))
            ])
          ],
        ),
      ])),
      bottomNavigationBar: const BottomAppBar(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                flex: 1,
                child: Center(
                    child: Text(
                  "Sobre",
                  style: TextStyle(color: Color.fromARGB(255, 116, 61, 168)),
                ))),
            Expanded(
                flex: 1,
                child: Center(
                    child: Text("Projetos",
                        style: TextStyle(
                            color: Color.fromARGB(255, 116, 61, 168))))),
            Expanded(
              flex: 1,
              child: Center(
                  child: Text("Contato",
                      style:
                          TextStyle(color: Color.fromARGB(255, 116, 61, 168)))),
            )
          ],
        ),
      ),
    );
  }
}
