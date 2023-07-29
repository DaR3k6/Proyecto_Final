import 'package:flutter/material.dart';
import 'package:proyecto_final/colores.dart';
import 'package:proyecto_final/components/texboxwight_login.dart';

class ContasenaWight extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const ContasenaWight({Key? key, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TexboxWight(
        child: TextField(
      obscureText: true,
      onChanged: onChanged,
      decoration: const InputDecoration(
          hintText: "Contraseña",
          icon: Icon(
            Icons.lock,
            color: colorPrincipal,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: colorPrincipal,
          ),
          border: InputBorder.none),
    ));
  }
}
