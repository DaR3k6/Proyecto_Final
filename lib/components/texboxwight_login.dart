import 'package:flutter/material.dart';
import 'package:proyecto_final/colores.dart';

class TexboxWight extends StatelessWidget {
  final Widget child;
  const TexboxWight({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      width: size.width * 0.9,
      decoration: BoxDecoration(
        color: colorInputs,
        borderRadius: BorderRadius.circular(30),
      ),
      child: child,
    );
  }
}
