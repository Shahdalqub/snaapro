import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Photo extends StatefulWidget {


  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  final ImagePicker _picker = ImagePicker();
  File? _image;
  @override
  void dispose() {
    // createText.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Color.fromRGBO(234, 234, 234, 1),
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'تغيير الصورة الشخصية',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),),
        ),
      ),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: _getImage,
        backgroundColor: Colors.blue,
        child: Icon(Icons.add_a_photo),
      ),

    );

  }
  _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _image == null ? Text("No Image") : Image.file(_image!),
        ],
      ),
    );
  }

  Future<void> _getImage() async {
    //ImagePiker
    await _picker.pickImage(source: ImageSource.gallery).then((value) {
      setState(() {
        _image = value as File;
      });
    });
  }
}