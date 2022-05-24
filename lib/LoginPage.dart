import 'package:flutter/material.dart';

import 'RegisterPage.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Login Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late String email;
  late String password;



  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();
    final myController2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your username',
              ),
              controller: myController,
            ),
            SizedBox(height: 25),
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your password',
              ),
              controller: myController2,
            ),
            SizedBox(height: 15),
            SizedBox(
              height:60,
              width:100,
              child: FloatingActionButton(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.zero),
                onPressed: () {
                  email = myController.text;
                  password = myController2.text;
                },
                child: const Text("Login",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              ),
            ),

            ElevatedButton(
              child: Text("Don't have an account!? Click to register homie"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage())
                );
              },
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}