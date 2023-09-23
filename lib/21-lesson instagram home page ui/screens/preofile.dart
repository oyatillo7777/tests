import 'package:flutter/material.dart';

class TwentyTwothProfile extends StatefulWidget {
  const TwentyTwothProfile({super.key});

  @override
  State<TwentyTwothProfile> createState() => _TwentyTwothProfileState();
}

class _TwentyTwothProfileState extends State<TwentyTwothProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.add_box_outlined,
                color: Colors.black,
                size: 25,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
                size: 25,
              ),
            )
          ],
          forceMaterialTransparency: true,
          title: const Text(
            "tillomirzolimov",
            style: TextStyle(color: Colors.black, fontSize: 20),
          )),
      body: const Column(children: [

      ]),
    );
  }
}
