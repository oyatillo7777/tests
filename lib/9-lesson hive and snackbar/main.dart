import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

late Box box;

void main() async {
  await Hive.initFlutter();
  box = await Hive.openBox<String>("ismlar");
  runApp(MaterialApp(
    home: Nineth(),
  ));
}

class Nineth extends StatefulWidget {
  const Nineth({Key? key}) : super(key: key);

  @override
  State<Nineth> createState() => _NinethState();
}

class _NinethState extends State<Nineth> {
  TextEditingController txt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hive")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: txt,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'write'),
            ),
          ),
          MaterialButton(
            onPressed: () {
              box.add(txt.value.text);
              txt.clear();
            },
            color: Colors.indigo,
            child:
                Text("Ok", style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
          Expanded(
            child: ValueListenableBuilder(
                valueListenable: box.listenable(),
                builder: (context, box, child) {
                  return ListView.builder(
                      itemCount: box.values.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            var snackbar = SnackBar(
                              content: Text(box.getAt(index)),
                              backgroundColor: Colors.black,
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackbar);
                          },
                          child: Container(
                              height: 50,
                              child: Card(
                                  child:
                                      Center(child: Text(box.getAt(index))))),
                        );
                      });
                }),
          )
        ],
      ),
    );
  }
}
