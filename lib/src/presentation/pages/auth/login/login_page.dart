import 'package:flutter/material.dart';
import 'package:flutter_gamer_mvvm/src/presentation/pages/auth/login/widgets/login_content.dart';

import '../../../utils/base_color.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: BACKGROUND_COLOR,
      body: LoginContent(),
    );
  }
}