import 'package:flutter/material.dart';
import 'package:on_boarding_screen/src/features/on_boarding/screens/on_boarding.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(brightness: Brightness.light, primarySwatch: Colors.amber),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      home: const OnBoarding(),
    );
  }
}
