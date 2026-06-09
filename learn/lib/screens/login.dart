import 'package:flutter/material.dart';
import 'package:learn/main.dart';
import 'package:learn/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isDataMatched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

          
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Username',
                ),
              ),
              const SizedBox(height: 30),
              TextFormField(
                obscureText: true,
                controller: _passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
              ),
              const SizedBox(height: 30),
              Visibility(
                visible: !_isDataMatched,
                child: const Text(
                  'Username and password do not match',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {
                  CheckLogin(context);
                },
                icon: const Icon(Icons.check),
                label: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );


    
  }

 void CheckLogin(BuildContext ctx) async {
  final _username = _usernameController.text;
  final _password = _passwordController.text;
  if(_username==_password){
    final _sharedPrefs = await SharedPreferences.getInstance();
    _sharedPrefs.setBool(Save_key_name, true);

    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (ctx)=> ScreenHome()));
  }else{
    ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(content: Text('does not match')));    // Snack bar used here
    showDialog(context: ctx, builder: (ctx1){
      return AlertDialog(title:Text('error') ,content: Text('does not match'),);

    });
    setState(() {
      _isDataMatched = false;
    });







  }
 }
}