// main.dart
import 'package:flutter/material.dart';
import 'package:riipedia_mobile/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RiiPedia',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.red,
        ).copyWith(secondary: Colors.red[400]),
        useMaterial3: true,
      ),
      home: MyHomePage(), // Assuming 'Menu()' is a widget in 'menu.dart'
    );
  }
}
