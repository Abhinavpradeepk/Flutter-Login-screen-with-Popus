import 'package:flutter/material.dart';

 main(){
  runApp(const MyWidget());
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,

      ),
      home : Homescreen(),
      
    );
  }
}
class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: const Color.fromARGB(255, 253, 255, 116),
  appBar: AppBar(
    title: const Text("navigation bar"),
    backgroundColor: const Color.fromARGB(255, 114, 131, 120),
  ),
  body: Center(
    child: SafeArea(

      child: Column(children:[Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "main screen contents",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
           
            Row(mainAxisAlignment: MainAxisAlignment.center,children:[
            TextButton(
            onPressed: () {print("button clicked");},
            child: Text("click here"),
          ),
          IconButton(
            onPressed: () {print("icon button clicked");},
            icon: Icon(Icons.favorite),
          ),
          ])
        ],
      ),Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "learning flutter is fun",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
           
            Row(mainAxisAlignment: MainAxisAlignment.center,children:[
            TextButton(
            onPressed: () {print("button clicked");},
            child: Text("click here"),
          ),
          IconButton(
            onPressed: () {print("icon button clicked");},
            icon: Icon(Icons.favorite),
          ),
          ])
        ],
      )]),
    ),
  ),
  bottomNavigationBar: Container(
    height: 50,
    color: const Color.fromARGB(255, 0, 255, 89),
    child: const Center(
      child: Text("footer\nCopyright @2024"),
    ),
  ),
);
  }
}
