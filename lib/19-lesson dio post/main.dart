import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Ninetheenth extends StatefulWidget {
  const Ninetheenth({super.key});

  @override
  State<Ninetheenth> createState() => _NinetheenthState();
}

class _NinetheenthState extends State<Ninetheenth> {
  TextEditingController txtTitle = TextEditingController();
  TextEditingController txtuserId = TextEditingController();
  TextEditingController txtBody = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dio Post")),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: txtuserId,
                decoration: InputDecoration(
                    hintText: "title",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: txtTitle,
                decoration: InputDecoration(
                    hintText: "title",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: txtBody,
                decoration: InputDecoration(
                    hintText: "body",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            MaterialButton(
              onPressed: () {
                int userId = int.parse(txtuserId.value.text);
                String title = txtTitle.value.text;
                String body = txtBody.value.text;
                postsData(userId, title, body);
              },
              child: Text('OK', style: TextStyle(color: Colors.white)),
              color: Colors.indigo,
            )
          ],
        ),
      ),
    );
  }

  Future postsData(int userId, String title, String body) async {
    final Dio dio = Dio();
    var response =
        await dio.post("https://jsonplaceholder.typicode.com/posts", data: {
      'userId': userId,
      'title': title,
      'body': body,
    });
    print(response.data);
  }
}
