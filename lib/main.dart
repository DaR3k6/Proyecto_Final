import 'package:flutter/material.dart';
import 'package:proyecto_final/Screen/welcome/welcome_screen.dart';
import 'colores.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: colorPrincipal,
            scaffoldBackgroundColor: Colors.white),
        initialRoute: "Home",
        routes: {
          "Home": (_) => const WelcomeScreen(),
        });
  }
}
