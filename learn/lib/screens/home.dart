import 'package:flutter/material.dart';
import 'package:learn/screens/login.dart';


class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home page'),backgroundColor: const Color.fromARGB(129, 0, 89, 255),
      actions: [
        IconButton(onPressed: (){
          signout(context);

        }, icon: Icon(Icons.exit_to_app)),
      ],
      
      ),

      body: SafeArea(child: Center(child: Text('Homescreen'))),
      
    
      
    );
  }

signout(BuildContext ctx){
  Navigator.of(ctx).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx1)=>ScreenLogin()), (route)=>false);
}



}