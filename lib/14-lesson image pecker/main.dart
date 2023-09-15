import 'dart:html';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tests/13-lesson%20custom%20widgets/widgets/custom_button.dart';

class Fourteenth extends StatefulWidget {
  const Fourteenth({Key? key}) : super(key: key);

  @override
  State<Fourteenth> createState() => _FourteenthState();
}

class _FourteenthState extends State<Fourteenth> {
  File? file;
  final ImagePicker imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image picker")),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomButton(
                title: 'Galarey',
                color: Colors.indigo,
                tap: () {},
              ),
              CustomButton(
                title: 'Camera',
                color: Colors.indigo,
                tap: () {},
              ),
            ]),
      ),
    );
  }
}
