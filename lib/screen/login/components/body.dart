import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:proyecto_final/Screen/welcome/components/background.dart';
import 'package:proyecto_final/components/boton_login.dart';
import 'package:proyecto_final/components/contrasena_wight.dart';
import 'package:proyecto_final/components/decoration_inputs_login.dart';
import 'package:proyecto_final/screen/dashboard/dashboard_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/logo.svg",
              height: size.height * 0.20,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            DecoracionInput(
              text: "Gmail",
              valueChanged: (value) => {},
            ),
            ContasenaWight(
              onChanged: (value) => {},
            ),
            BotonLogin(
                text: "Login",
                press: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const DasboardScreen();
                      }))
                    }),
            SizedBox(
              height: size.height * 0.03,
            ),
            // VereficacionLogin(
            //   press: () {
            //     Navigator.push(context, MaterialPageRoute(builder: (context) {
            //       //Url de;
            //     }));
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
