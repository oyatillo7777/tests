import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../13-lesson custom widgets/widgets/custom_button.dart';

class Fourteenth extends StatefulWidget {
  const Fourteenth({Key? key}) : super(key: key);

  @override
  State<Fourteenth> createState() => _FourteenthState();
}

class _FourteenthState extends State<Fourteenth> {
  File? file;
  List<File?> listImage = [];
  final ImagePicker imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image picker")),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomButton(
                title: 'Galarey',
                color: Colors.indigo,
                tap: () {
                  getImageFromGallery();
                },
              ),
              CustomButton(
                title: 'Camera',
                color: Colors.indigo,
                tap: () {
                  getImageFromCamera();
                },
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: listImage.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        child: Image.file(listImage[index]!, fit: BoxFit.cover),
                      );
                    }),
              )
            ]),
      ),
    );
  }

  getImageFromGallery() async {
    var img = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      file = File(img!.path);
      listImage.add(file);
    });
  }

  getImageFromCamera() async {
    var img = await imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      file = File(img!.path);
      listImage.add(file);
    });
  }
}
