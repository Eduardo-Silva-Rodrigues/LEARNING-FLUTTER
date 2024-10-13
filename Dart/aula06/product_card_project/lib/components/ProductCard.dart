import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  String image =
      'https://th.bing.com/th/id/OIP.0lHYSgYIxJp7iNuFdJ-9aQHaEK?w=270&h=180&c=7&r=0&o=5&pid=1.7';
  String name = "Tênis Esportivo";
  String description = "Tênis confortável";
  String price = "R\$199,99";

  ProductCard(
      {super.key,
      required this.name,
      required this.description,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 260,
      child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Card(
            borderOnForeground: true,
            shape: RoundedRectangleBorder(
                side: BorderSide(
                  strokeAlign: 1,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.all(Radius.circular(6))),
            shadowColor: Colors.black,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Container(
                  height: 90,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(image),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                ),
                Text(name,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w600)),
                Text(description, style: const TextStyle(fontSize: 16)),
                Text(price,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600)),
              ]),
            ),
          )),
    );
  }
}
