import 'package:flutter/material.dart';

class Custom_TextFiled extends StatelessWidget {
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final TextEditingController? controller;

  const Custom_TextFiled(
      {Key? key,
      this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.controller})
      : super(key: key);

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
        controller: controller,
        decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: Icon(suffixIcon),
            border: InputBorder.none,
            prefixIcon: Icon(prefixIcon)),
      ),
    );
  }
}
