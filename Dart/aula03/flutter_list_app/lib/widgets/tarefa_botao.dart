import 'package:flutter/material.dart';

class Botao extends StatefulWidget {
  @override
  BotaoState createState() {
    return BotaoState();
  }
}

class BotaoState extends State<Botao> {
  bool visivel = false;
  TextEditingController controller = TextEditingController();

  void alterarVisibilidade() {
    setState(() {
      visivel = !visivel;
    });
  }

  @override
  Widget build(BuildContext context) {
      return Stack(
        children: [
            Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: alterarVisibilidade,
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Colors.blueAccent
                  ),
                  child: Icon(Icons.add, color: Colors.white),
                )
            ),
          if (visivel)
            Center(
              child: TextField(
                controller: controller
              ),
            )

        ]
    );
  }
}