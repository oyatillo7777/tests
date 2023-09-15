import 'package:flutter/material.dart';
import 'package:tests/12-lesson%20http/model/post.dart';
import 'package:tests/12-lesson%20http/network/network.dart';

class Twelveth extends StatefulWidget {
  const Twelveth({Key? key}) : super(key: key);

  @override
  State<Twelveth> createState() => _TwelvethState();
}

class _TwelvethState extends State<Twelveth> {
  late Future<List<Post>> postList;

  @override
  void initState() {
    super.initState();
    postList = Network().getPostFromInternet();
    print(postList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HTTP Example")),
      body: FutureBuilder<List<Post>>(
        future: postList,
        builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data![index].title.toString()),
                    subtitle: Text(snapshot.data![index].body.toString()),
                  );
                });
          } else if (snapshot.connectionState == snapshot.connectionState) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
