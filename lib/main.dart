import 'package:flutter/material.dart';
import 'src/post.dart';
import 'src/postasync.dart';
import 'show.dart';
import 'post_form.dart';

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
  // var _scaffoldGlobalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts Index'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PostForm(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      body: FutureBuilder(
        future: getPosts(),
        builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Text('Press button to start.');
            case ConnectionState.active:
              return Text('Connection Active.');
            case ConnectionState.waiting:
              return Text('Awaiting result...');
            case ConnectionState.done:
              if (snapshot.hasError) return Text('Error: ${snapshot.error}');
              return ListView(
                  children:
                      snapshot.data.map((data) => _buildItem(data)).toList());
          }
          return null; // unreachable
        },
      ),
    );
  }

  Widget _buildItem(Post post) {
    return Padding(
      key: Key(post.id),
      padding: const EdgeInsets.all(16.0),
      child: ExpansionTile(
        title: Text(post.title, style: TextStyle(fontSize: 24.0)),
        children: <Widget>[
          Text(post.content),
          IconButton(
            icon: Icon(Icons.launch),
            color: Colors.green,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Show(
                          post: post,
                        )),
              );
            },
          )
        ],
      ),
    );
  }
}
