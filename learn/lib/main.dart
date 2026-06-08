import 'package:flutter/material.dart';
import 'package:learn/screens/splash.dart';

void main(){
  runApp(LoginScreen());
}
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login page',
      theme : ThemeData(
        primarySwatch: Colors.blue,
      ),
        home:ScreenSplash(
          
        ),



      );
  }
}












































