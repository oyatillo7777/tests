import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tests/12-lesson%20http/model/post.dart';

import '../model/Posts.dart';

class Eighteenth extends StatefulWidget {
  const Eighteenth({super.key});

  @override
  State<Eighteenth> createState() => _EighteenthState();
}

class _EighteenthState extends State<Eighteenth> {
  late Future<List<Posts>> postList;

  @override
  void initState() {
    postList = getPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dio')),
      body: FutureBuilder<List<Posts>>(
          future: postList,
          builder:
              (BuildContext context, AsyncSnapshot<List<Posts>> asyncSnapshot) {
            if (asyncSnapshot.hasData) {
              return ListView.builder(
                  itemCount: asyncSnapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 200,
                      height: 150,
                      child: Column(
                        children: [
                          Text(asyncSnapshot.data![index].userId.toString()),
                          Text(asyncSnapshot.data![index].title.toString()),
                          Text(asyncSnapshot.data![index].body.toString()),
                        ],
                      ),
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
    );
  }

  Future<List<Posts>> getPosts() async {
    final dio = Dio();
    var response = await dio.get("https://jsonplaceholder.typicode.com/posts");
    print(response.data);
    print(response.statusCode);
    return postListFromMaps(response.data);
  }
}
