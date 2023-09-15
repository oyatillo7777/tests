import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Threetenth_Header extends StatelessWidget {
  final String? title;

  const Threetenth_Header({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            title.toString(),
            style: TextStyle(fontSize: 30, color: Colors.green),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 1,
          )
        ],
      ),
    );
  }
}
