import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'LoginPage.dart';
import 'package:image_picker';


class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  late String className;
  late String teacher;
  late String hwName;


  Widget build(BuildContext context) {
    final myController = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Upload'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'label',
                  ),
                  controller: myController,
                ),
              ],
            )
        )
    );
  }
}

