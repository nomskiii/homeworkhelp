import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}




class _FeedPageState extends State<FeedPage> {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Classes"),
      ),
      body: Center(
        child: ListView.builder(
            itemCount:
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
              leading:
              )
      }
        )
      ),
    )
  }

}