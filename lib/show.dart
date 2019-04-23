import 'package:flutter/material.dart';
import 'src/post.dart';
import 'src/postasync.dart';
import 'post_form.dart';

class Show extends StatelessWidget {
  Show({@required this.post});
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts Details'),
      ),
      body: FutureBuilder(
        future: getPost(post),
        builder: (BuildContext context, AsyncSnapshot<Post> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Text('Press button to start.');
            case ConnectionState.active:
              return Text('Connection Active.');
            case ConnectionState.waiting:
              return Text('Awaiting result...');
            case ConnectionState.done:
              if (snapshot.hasError) return Text('Error: ${snapshot.error}');
              return ShowWidget(post: snapshot.data);
          }
          return null; // unreachable
        },
      ),
    );
  }
}

class ShowWidget extends StatelessWidget {
  ShowWidget({@required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Text(post.id),
          Text(post.title),
          Text(post.content),
          Row(
            children: <Widget>[
              RaisedButton(
                color: Colors.orange,
                child: Text('Update'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PostForm(
                              post: post,
                            )),
                  );
                },
              ),
              RaisedButton(
                color: Colors.red,
                child: Text('Delete'),
                onPressed: () async {
                  await deletePost(post);
                  Navigator.pop(context);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
