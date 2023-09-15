import 'package:flutter/material.dart';

class firts_lesson extends StatefulWidget {
  const firts_lesson({Key? key}) : super(key: key);

  @override
  State<firts_lesson> createState() => _firts_lessonState();
}

class _firts_lessonState extends State<firts_lesson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {},
                child: Text("Button1"),
                color: Colors.yellow,
              ),
              MaterialButton(
                onPressed: () {},
                child: Text("Button1"),
                color: Colors.yellow,
              ),
              MaterialButton(
                onPressed: () {},
                child: Text("Button1"),
                color: Colors.yellow,
              ),
            ]),
      ),
    );
  }
}

class firts_lesson1 extends StatefulWidget {
  const firts_lesson1({Key? key}) : super(key: key);

  @override
  State<firts_lesson1> createState() => _firts_lesson1State();
}

class _firts_lesson1State extends State<firts_lesson1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        MaterialButton(
          onPressed: () {},
          child: Text("Button1"),
          color: Colors.yellow,
        ),
        MaterialButton(
          onPressed: () {},
          child: Text("Button1"),
          color: Colors.yellow,
        ),
        MaterialButton(
          onPressed: () {},
          child: Text("Button1"),
          color: Colors.yellow,
        ),
      ]),
    );
  }
}
