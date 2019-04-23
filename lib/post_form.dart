import 'package:flutter/material.dart';
import 'src/post.dart';
import 'src/postasync.dart';

class PostForm extends StatefulWidget {
  PostForm({this.post});
  final Post post;

  @override
  _PostFormState createState() => _PostFormState();
}

class _PostFormState extends State<PostForm> {
  final titleController = TextEditingController();
  final contentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.post != null) {
      titleController.text = widget.post.title;
      contentController.text = widget.post.content;
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    titleController.dispose();
    contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.post == null ? Text('Create Post') : Text('Edit Post'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Content'),
              controller: contentController,
              maxLines: 3,
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  color: Colors.blue,
                  child: Text('Submit'),
                  onPressed: () async {
                    widget.post == null
                        ? await createPost(
                            Post(
                                title: titleController.text,
                                content: contentController.text),
                          )
                        : await updatePost(
                            Post(
                                id: widget.post.id,
                                title: titleController.text,
                                content: contentController.text),
                          );
                    Navigator.pop(context);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
