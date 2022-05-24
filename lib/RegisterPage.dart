import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'LoginPage.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);






  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late String name;
  late String email;
  late String  password;

  Widget build(BuildContext context) {
    final myController = TextEditingController();
    final myController2 = TextEditingController();
    final myController3 = TextEditingController();
    final myController4 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your full name',
                ),
                controller: myController,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your email',
                ),
                controller: myController2,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your password',
                ),
                controller: myController3,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Confirm password',
                ),
                controller: myController4,
              ),
              SizedBox(height: 15),
              SizedBox(
                height:60,
                width:150,
                child: FloatingActionButton(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.zero),
                  onPressed: () {
                    name = myController.text;
                    email = myController2.text;
                    password = myController3.text;
                    if (myController4.text == password) {
                      Navigator.pop(context);
                    } else {
                      Fluttertoast.showToast(
                      msg: "Please confirm your password to match the password entered",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 5,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }
                  },
                  child: const Text("Register",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                ),
              )

            ],
        )
      )
    );
  }
}