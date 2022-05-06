import 'package:flutter/material.dart';

import '../app.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.amber.shade900,
      theme: ThemeData(
          cardTheme: const CardTheme(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)))),
          bottomAppBarTheme: const BottomAppBarTheme(color: Colors.amber),
          colorScheme:
              ColorScheme.fromSwatch(accentColor: Colors.amber.shade900)),
      home: const Products(),
    );
  }
}
