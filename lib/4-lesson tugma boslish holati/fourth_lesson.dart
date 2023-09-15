import 'package:flutter/material.dart';

class fourth_lesson extends StatefulWidget {
  final String ism;
  final String fam;

  const fourth_lesson({Key? key, required this.ism, required this.fam})
      : super(key: key);

  @override
  State<fourth_lesson> createState() => _fourth_lessonState();
}

class _fourth_lessonState extends State<fourth_lesson> {
  int son = 0;

  void add() {
    son++;
  }

  void minus() {
    son--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.fam + widget.ism,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            Text(
              "siz bu tugmani shuncha marta bosdingiz",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(son.toString(), style: TextStyle(fontSize: 20)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      add();
                    });
                  },
                  child: Icon(Icons.add, color: Colors.black),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      minus();
                    });
                  },
                  child: Icon(Icons.remove, color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
