import 'package:flutter/material.dart';

class Second_Lesson extends StatefulWidget {
  const Second_Lesson({Key? key}) : super(key: key);

  @override
  State<Second_Lesson> createState() => _Second_LessonState();
}

class _Second_LessonState extends State<Second_Lesson> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image(image: AssetImage("images/img.png")),
      ),
    );
  }
}

class Second_Lesson_ListView extends StatefulWidget {
  const Second_Lesson_ListView({Key? key}) : super(key: key);

  @override
  State<Second_Lesson_ListView> createState() => _Second_Lesson_ListViewState();
}

class _Second_Lesson_ListViewState extends State<Second_Lesson_ListView> {
  List<String> ismlar = [
    "Alilsher",
    "Zohid",
    "Rasul",
    "Mirzo",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: ismlar.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(ismlar[index]),
            );
          }),
    );
  }
}
