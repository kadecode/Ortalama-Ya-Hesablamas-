import 'package:flutter/material.dart';

import 'input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueGrey[400],
        scaffoldBackgroundColor: Colors.blueGrey[300],
      ),
      title: 'Flutter Demo',
      home: const InputPage(),
    );
  }
}
