import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_gamer_mvvm/src/presentation/utils/base_color.dart';
import 'package:flutter_gamer_mvvm/src/presentation/widgets/default_button.dart';

import '../../../../widgets/default_textfield.dart';
import 'login_text_field_description.dart';


class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.32,
              color: BASE_COLOR,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/img/gamepad.png', width: 100, height: 150,),
                  const Text('Gamer MVVM', style: TextStyle(
                    fontSize: 22, 
                    fontWeight: FontWeight.bold),
                    ),
                ],
              )
            ),
          ),
          const LoginTextFieldDescription(),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: const Text('Login',
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Spacer(),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: DefaultTextField(
              label: 'Correo',
              icon: Icons.email,
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: DefaultTextField(
              label: 'Contraseña',
              icon: Icons.lock,
            ),
          ),

          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: DefaultButton(
              text: 'Iniciar sesión',
              onPressed: (){},
            ),
          ),

          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 20),
            child: const Text(
              "No tienes cuenta ?",
              style: TextStyle(
                color: Colors.white,
              ),
              ),
            )
        ],
      );
  }
}