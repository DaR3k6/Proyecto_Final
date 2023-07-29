import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proyecto_final/Screen/welcome/components/background.dart';
import 'package:proyecto_final/components/boton_login.dart';
import 'package:proyecto_final/screen/login/login_screen.dart';
import 'package:proyecto_final/colores.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "BIENVENIDOS",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset(
              "assets/icons/welcome.svg",
              height: size.height * 0.3,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            BotonLogin(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }),
                );
              },
            ),
            BotonLogin(
              text: "REGISTRO",
              color: colorInputs,
              textColor: Colors.black,
              press: () {
                /* Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const RegistroLogin();
                })); */
              },
            ),
          ],
        ),
      ),
    );
  }
}
