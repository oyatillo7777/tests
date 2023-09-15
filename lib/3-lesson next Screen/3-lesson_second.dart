import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class third_lesson_Second_Screen extends StatefulWidget {
  const third_lesson_Second_Screen({Key? key}) : super(key: key);

  @override
  State<third_lesson_Second_Screen> createState() =>
      _third_lesson_Second_ScreenState();
}

class _third_lesson_Second_ScreenState
    extends State<third_lesson_Second_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second")),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.indigo,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("come back",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
