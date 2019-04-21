import 'package:flutter/material.dart';
import 'src/post.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crud Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PostIndexPage(),
    );
  }
}

class PostIndexPage extends StatefulWidget {
  @override
  _PostIndexPage createState() => _PostIndexPage();
}

class _PostIndexPage extends State<PostIndexPage> {
  List<Post> _posts = posts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts Index'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 1));
          setState(() {
            _posts.removeAt(0);
          });
        },
        child: ListView(
          children: _posts.map(_buildItem).toList(),
        ),
      ),
    );
  }

  Widget _buildItem(Post post) {
    return Padding(
      key: Key(post.id),
      padding: const EdgeInsets.all(16.0),
      child: ExpansionTile(
        title: Text(post.title, style: TextStyle(fontSize: 24.0)),
        children: <Widget>[Text(post.content)],
      ),
    );
  }
}
