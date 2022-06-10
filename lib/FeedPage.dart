import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homeworkhelp/UploadPage.dart';

class FeedPage extends StatefulWidget {
  final String email;
  const FeedPage({Key? key, required this.email}) : super(key: key);

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
        //child: ListView.builder(
        //    itemCount:
        //    itemBuilder: (BuildContext context, int index) {
        //      return ListTile(
        //      leading:
         //     )
      //}
        ),


    floatingActionButton: FloatingActionButton(
      onPressed: () {
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => UploadPage(email : widget.email))
        );
      },
      backgroundColor: Colors.red,
      child: const Icon(Icons.add),
      ),
    );
  }

}