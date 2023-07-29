import 'package:flutter/material.dart';
import 'package:proyecto_final/colores.dart';

class VereficacionLogin extends StatelessWidget {
  final bool login;
  final Function() press;
  const VereficacionLogin({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "No estas registado?" : "Tienes cuenta? ",
          style: const TextStyle(color: colorPrincipal),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Registrate!!" : "Inicie Sesion!!!",
            style: const TextStyle(
                color: colorPrincipal, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
