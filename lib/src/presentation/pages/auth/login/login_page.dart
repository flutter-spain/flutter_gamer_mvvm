import 'package:flutter/material.dart';
import 'package:flutter_gamer_mvvm/src/presentation/pages/auth/login/login_viewmodel.dart';
import 'package:flutter_gamer_mvvm/src/presentation/pages/auth/login/widgets/login_content.dart';
import 'package:provider/provider.dart';
import '../../../utils/base_color.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    LoginViewModel vm = Provider.of<LoginViewModel>(context);
    
    return Scaffold(
      backgroundColor: BACKGROUND_COLOR,
      body: LoginContent(vm),
    );
  }
}