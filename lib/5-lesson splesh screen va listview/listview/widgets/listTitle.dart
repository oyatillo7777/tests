import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget listTitle(String image, String ism) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 60.0),
            child:
                Container(height: 50, width: 50, child: Image.network(image)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: Text(ism),
          )
        ],
      ),
    ),
  );
}
