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
  final List<String> habilidades = <String> [
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
            child: Column(
              children: [
                Stack(
                  
                ),
          ])),
    );
  }
}
