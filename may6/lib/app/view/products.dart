import 'package:flutter/material.dart';
import 'package:may6/app/view/product.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(31, 65, 64, 64),
      body: const Center(child: Product()),
      bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [Icon(Icons.settings), Icon(Icons.spellcheck)]),
    );
  }
}
