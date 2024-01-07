import 'package:flutter/material.dart';

class LoginTextFieldDescription extends StatelessWidget {
  const LoginTextFieldDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: const EdgeInsets.only(left: 20, top: 20),
            child: const Text(
              'Continua',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          );
  }
}