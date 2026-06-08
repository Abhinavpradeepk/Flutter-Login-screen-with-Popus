import 'package:flutter/material.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({super.key});
  final _usernameController = TextEditingController();
  final _passwordContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end
            
            ,children: [

          
            TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Username'
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(obscureText: true,controller: _passwordContoller
            ,decoration: InputDecoration(
                border: OutlineInputBorder(),
                
                hintText: 'Password'
              ),),
              SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(onPressed: (){
              CheckLogin(context);



            }, icon: Icon(Icons.check),
            label:Text('Login')),
            
          
          ],
            
          ),
        )
      );


    
  }
 void CheckLogin(BuildContext ctx){
  final _username = _usernameController.text;
  final _password = _passwordContoller.text;
  if(_username==_password){


  }else{
    ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(content: Text('does not match')));    // Snack bar used here
    showDialog(context: ctx, builder: (ctx1){
      return AlertDialog(title:Text('error') ,content: Text('does not match'),);
    });







  }
 }

}