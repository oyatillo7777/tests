import 'package:flutter/material.dart';

class Sinov extends StatefulWidget {
  const Sinov({super.key});

  @override
  State<Sinov> createState() => _SinovState();
}

class _SinovState extends State<Sinov> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.white,
        title: Container(
          height: 40,
          child: Center(
            child: TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    contentPadding: EdgeInsets.symmetric(vertical: 0),
                    fillColor: Colors.grey[300],
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none))),
          ),
        ),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Expanded(
            child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        height: 150,
                        color: Colors.grey,
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        height: 150,
                        color: Colors.grey,
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        height: 150,
                        color: Colors.grey,
                      ),
                    )),
              ],
            ),
          ],
        ));
      }),
    );
  }
}
