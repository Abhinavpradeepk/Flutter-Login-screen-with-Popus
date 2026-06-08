import 'package:flutter/material.dart';
import 'package:learn/screens/login.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {


//   @override
  void initState() {
    gotoLogin();
    super.initState();
  }

// @override
//   void didChangeDependencies() {
//     // TODO: implement didChangeDependencies
//     super.didChangeDependencies();
//   }

// @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Image.asset('assets/images/github.png',height: 180,),
         
         
      ),
      

    );



  }
Future <void> gotoLogin() async{
  await Future.delayed(Duration(seconds:3));
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx){  
    return ScreenLogin();
  }));
}



}   































































