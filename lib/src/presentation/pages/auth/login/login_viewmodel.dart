import 'package:flutter/material.dart';
import 'package:flutter_gamer_mvvm/src/presentation/pages/auth/login/login_state.dart';
import '../../../utils/validation_item.dart';

class LoginViewModel extends ChangeNotifier {
LoginState _state = LoginState();
// getters
LoginState get state => _state;

// setters
void changeEmail(String email) {
  _state = _state.copyWith(email: ValidationItem(value: email));
  notifyListeners();
}

void changePassword(String password) {
  _state = _state.copyWith(password: ValidationItem(value: password));
  notifyListeners();
}

void login(){
  print('email: ${_state.email.value}');
  print('password: ${_state.password.value}');
}
}