import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Seventeenth_Screen extends StatefulWidget {
  final String rasm;
  final String nomi;
  final String malumot;

  const Seventeenth_Screen(
      {super.key,
      required this.rasm,
      required this.nomi,
      required this.malumot});

  @override
  State<Seventeenth_Screen> createState() => _Seventeenth_ScreenState();
}

class _Seventeenth_ScreenState extends State<Seventeenth_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.nomi)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Hero(
                  tag: widget.rasm,
                  child:
                      Image(image: AssetImage(widget.rasm), fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.malumot,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
