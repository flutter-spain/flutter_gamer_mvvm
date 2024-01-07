import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_gamer_mvvm/src/presentation/utils/base_color.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BACKGROUND_COLOR,
      body: Column(
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
          Container(
            margin: const EdgeInsets.only(left: 20, top: 20),
            child: const Text(
              'Continua',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
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
            child: TextField(
              decoration: InputDecoration(
                label : const Text('Correo electrónico'),
                labelStyle: const TextStyle(color: Colors.white),
                suffixIcon: const Icon(
                  Icons.email,
                  color: Colors.white,
                  ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                label : const Text('Contraseña'),
                labelStyle: const TextStyle(color: Colors.white),
                suffixIcon: const Icon(Icons.lock,
                color: Colors.white,
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
          ),

          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: BASE_COLOR,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                
              ),
              child: Stack(
                children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  child: const Text(
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: BACKGROUND_COLOR,
                    ),
                    'Iniciar sesión'),
                ),
                  Container(
                    height: 50,
                    alignment: Alignment.centerRight,
                    child: const CircleAvatar(
                      radius: 15,
                      backgroundColor: BACKGROUND_COLOR,
                      child: Icon(
                          Icons.arrow_forward_ios,
                          color: BASE_COLOR,
                        ),
                    ),
                  ),
                  ]
              ),
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
      )
    );
  }
}