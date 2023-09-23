import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TweTyTwoThAdd extends StatefulWidget {
  const TweTyTwoThAdd({super.key});

  @override
  State<TweTyTwoThAdd> createState() => _TweTyTwoThAddState();
}

class _TweTyTwoThAddState extends State<TweTyTwoThAdd> {
  final ImagePicker imagePicker = ImagePicker();

  @override
  void initState() {
    getImageFromGallery();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  getImageFromGallery() async {
    var img = await imagePicker.pickImage(source: ImageSource.gallery);
  }
}
