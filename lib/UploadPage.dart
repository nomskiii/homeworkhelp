import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';


class UploadPage extends StatefulWidget {
  const UploadPage({Key? key}) : super(key: key);

  @override
  State<UploadPage> createState() => _UploadPageState();
}


class _UploadPageState extends State<UploadPage> {
  late String className;
  late String teacher;
  late String hwName;
  File? _image;

  final _picker = ImagePicker();

  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
    await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();
    final myController2 = TextEditingController();
    final myController3 = TextEditingController();

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
                    labelText: 'Class',
                  ),
                  controller: myController,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Teacher',
                  ),
                  controller: myController2,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Assignment',
                  ),
                  controller: myController3,
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height:60,
                  width:150,
                  child: FloatingActionButton(
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.zero),
                    onPressed: () {
                      _openImagePicker();
                    },
                    child: const Text("Upload Image",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  ),
                ),
                const SizedBox(height: 35),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 300,
                  color: Colors.grey[300],
                  child: _image != null
                      ? Image.file(_image!, fit: BoxFit.cover)
                      : const Text('Please select an image'),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height:60,
                  width:150,
                  child: FloatingActionButton(
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.zero),
                    onPressed: () {
                      className = myController.text;
                      teacher = myController2.text;
                      hwName = myController3.text;

                      if (myController3.text != null)  {
                        //upload to firebase idk how to do that
                        Navigator.pop(context);
                      } else {
                        Fluttertoast.showToast(
                            msg: "Please enter a title for the assignment",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 5,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                      }
                    },
                    child: const Text("Submit",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                  ),
                )
              ],
            )
        )
    );
  }
}

