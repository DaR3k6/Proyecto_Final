import 'package:flutter/material.dart';
import 'package:proyecto_final/colores.dart';
import 'package:google_fonts/google_fonts.dart';

class DasboardScreen extends StatelessWidget {
  const DasboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: colorDashboard,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme.apply(bodyColor: Colors.white),
        ),
      ),
      home: Scaffold(
        body: SafeArea(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    DrawerHeader(child: Image.asset("assets/images/key.png"))
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
