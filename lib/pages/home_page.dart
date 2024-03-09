import 'package:flutter/material.dart';
import 'package:untitled4/model/post_model.dart';
import 'package:untitled4/services/sql_service.dart';

class HomPage extends StatefulWidget {
  const HomPage({super.key});

  @override
  State<HomPage> createState() => _HomPageState();
}

class _HomPageState extends State<HomPage> {


  String name = 'No date';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var post = Post(title: 'NextGen', body: 'Academy');
    // SqlService.createPost(post);
    loadPosts();
  }

  loadPosts() async{
    var posts = await SqlService.fetchPosts();
    setState(() {
      name = posts[2].toMap().toString();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('SQlite'),
      ),
      body: Center(
        child: Text(name),
      ),
    );
  }
}
