import 'package:flutter/material.dart';
import 'package:proyecto_final/colores.dart';

class BotonRegistro extends StatelessWidget {
  final String text;
  final Function() press;
  final Color color, textColor;

  const BotonRegistro({
    Key? key,
    required this.text,
    required this.press,
    this.color = colorPrincipal,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          ),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
