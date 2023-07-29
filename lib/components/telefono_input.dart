import 'package:flutter/material.dart';
import 'package:proyecto_final/colores.dart';
import 'package:proyecto_final/components/texboxwight_login.dart';

class TelefonoInput extends StatelessWidget {
  final String text;
  final IconData icon;
  final ValueChanged<String> valueChanged;

  const TelefonoInput(
      {Key? key,
      required this.text,
      this.icon = Icons.phone,
      required this.valueChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TexboxWight(
      child: TextField(
        onChanged: valueChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: colorPrincipal, // Asegúrate de definir colorPrimary
          ),
          hintText: text,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
