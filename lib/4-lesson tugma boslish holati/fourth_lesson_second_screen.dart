import 'package:flutter/material.dart';
import 'package:tests/4-lesson%20tugma%20boslish%20holati/fourth_lesson.dart';

class fourth_lesson_Second_Screen extends StatefulWidget {
  const fourth_lesson_Second_Screen({Key? key}) : super(key: key);

  @override
  State<fourth_lesson_Second_Screen> createState() =>
      _fourth_lesson_Second_ScreenState();
}

class _fourth_lesson_Second_ScreenState
    extends State<fourth_lesson_Second_Screen> {
  TextEditingController ism = TextEditingController();
  TextEditingController fam = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: ism,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "ism"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: fam,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "fam"),
            ),
          ),
          MaterialButton(
            color: Colors.indigo,
            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => fourth_lesson(
                          ism: ism.value.text, fam: fam.value.text)));
            },
            child: Text("Send", style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}
