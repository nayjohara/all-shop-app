import 'package:flutter/material.dart';
import 'package:all_shop/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Color(0xFF2A9D8F),
          secondary: Color(0xFF2A9D8F),
        ),
      ),
      home: MyHomePage(),
    );
  }
}
