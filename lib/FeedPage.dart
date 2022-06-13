
import 'package:event/event.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homeworkhelp/UploadPage.dart';

class FeedPage extends StatefulWidget {
  String email;
  String name = '';
  FeedPage({Key? key, required this.email}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}




class _FeedPageState extends State<FeedPage> {

  DatabaseReference _database = FirebaseDatabase.instance.ref();
  String _performSingleFetch() {
    _database.child('users').get().then((snapshot) {
      if (snapshot != null) {
        final users = Map<String, dynamic>.from((snapshot.value! as Event).snapshot.value;

        users.forEach((key, value) {
          final nextUser = Map<String, dynamic>.from(value);
          if(nextUser['Email'] == widget.email) {
            return nextUser['Name'];
      }
      });
      }
    });
    return 'notThere';
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Classes"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Email: $widget.email'),
            Text('Name: $_performSingleFetch()')
          ],
        )
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