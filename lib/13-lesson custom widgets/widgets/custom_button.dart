import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final VoidCallback? tap;
  final Color? color;

  const CustomButton({Key? key, this.title, this.tap, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Container(
        margin: EdgeInsets.all(8),
        alignment: Alignment.center,
        height: 44,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color == null ? Colors.green : color),
        child: Text(title.toString(), style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
