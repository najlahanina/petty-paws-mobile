import 'package:flutter/material.dart';
import 'package:petty_paws/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 116, 45, 88)),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

