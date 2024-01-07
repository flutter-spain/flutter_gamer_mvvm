import 'package:flutter/material.dart';
import 'package:flutter_gamer_mvvm/src/presentation/pages/auth/login/login_page.dart';
import 'package:flutter_gamer_mvvm/src/presentation/pages/auth/login/login_viewmodel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (_) => LoginViewModel()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
    
        debugShowCheckedModeBanner: false,
        
        initialRoute: 'login',
        
        routes:{
          'login': (context) => LoginPage(),
        },
      ),
    );
  }
}



