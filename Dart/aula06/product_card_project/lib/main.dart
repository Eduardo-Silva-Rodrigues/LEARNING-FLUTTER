import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/ProductCard.dart';

void main() {
  runApp(const ProductCardApp());
}

class ProductCardApp extends StatelessWidget {
  const ProductCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ProductCardPage(),
    );
  }
}

class ProductCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Product Card Page",
              style: TextStyle(color: Colors.black)),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            ProductCard(
                name: "Nome", description: "Descrição", price: "R\$ 199,99"),
          ]),
        ));
  }
}
