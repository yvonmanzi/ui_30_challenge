import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget productName = Container(
        margin: const EdgeInsets.all(8.0),
        child: const Text(
          'Brocoli',
          style: TextStyle(
              color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
        ));
    Widget productPrice = Container(
        decoration: const BoxDecoration(color: Colors.red),
        child: Container(
          margin: const EdgeInsetsDirectional.all(8.0),
          child: const Text(
            '\$ 30',
            style: TextStyle(color: Colors.white),
          ),
        ));
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(
              height: 100.0,
              width: 100.0,
              child: Image.asset('images/brocoli.jpeg')),
          productName,
          productPrice,
        ]),
      ),
    );
  }
}
