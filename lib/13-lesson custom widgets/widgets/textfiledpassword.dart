import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordTextFiled extends StatefulWidget {
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final TextEditingController? controller;

  const PasswordTextFiled(
      {Key? key,
      this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.controller})
      : super(key: key);

  @override
  State<PasswordTextFiled> createState() => _PasswordTextFiledState();
}

class _PasswordTextFiledState extends State<PasswordTextFiled> {
  bool isShown = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      height: 44,
      decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.green)),
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
            hintText: widget.hintText,
            suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  isShown = !isShown;
                });
              },
              child: Icon(
                  isShown == true ? Icons.panorama_fish_eye : Icons.visibility),
            ),
            border: InputBorder.none,
            prefixIcon: Icon(widget.prefixIcon)),
      ),
    );
  }
}
