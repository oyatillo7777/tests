import 'dart:convert';

import 'package:http/http.dart';
import 'package:tests/12-lesson%20http/model/post.dart';

class Network {
  Future<List<Post>> getPostFromInternet() async {
    var url = "https://jsonplaceholder.typicode.com/posts";
   try{
     var response = await get(Uri.parse(url));
     print(response.statusCode);
     print(response.body);
     if (response.statusCode == 200) {
       print("malumot jonatildi");
       final List<dynamic> jsonData = json.decode(response.body);
       return jsonData.map((e) => Post.fromJson(e)).toList();

     } else {
       throw Exception('adsdadas ');
     }
   }catch(e){
     print(e);
   }
   return Future.value();
  }
}
