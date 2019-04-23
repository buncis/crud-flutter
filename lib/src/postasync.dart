import 'package:http/http.dart' as http;
import 'package:crud/src/post.dart';
import 'dart:convert';

Future<List<Post>> getPosts() async {
  final url = 'http://192.168.0.19:3000/posts';
  final response = await http.get(
    url,
    headers: {
      "Content-Type": "application/json",
    },
  );
  if (response.statusCode == 200) {
    return new List<Post>.from(
      json.decode(response.body).map(
            (eachJson) => Post.fromJson(eachJson),
          ),
    );
  } else {
    throw Exception(
      '${response.statusCode} Error Fetching Posts, Results: ${response.body}',
    );
  }
}

Future<Post> getPost(Post post) async {
  final url = 'http://192.168.0.19:3000/posts/${post.id}';
  final response = await http.get(
    url,
    headers: {
      "Content-Type": "application/json",
    },
  );
  if (response.statusCode == 200) {
    return Post.fromJson(json.decode(response.body));
  } else {
    throw Exception(
      '${response.statusCode} Error Fetching Post, Results: ${response.body}',
    );
  }
}

Future<Post> createPost(Post post) async {
  final url = 'http://192.168.0.19:3000/posts/';
  final response = await http.post(
    url,
    headers: {
      "Content-Type": "application/json",
    },
    body: json.encode(post.toJson()),
  );
  if (response.statusCode == 201) {
    return Post.fromJson(json.decode(response.body));
  } else {
    throw Exception(
      '${response.statusCode} Error Creating Post, Results: ${response.body}',
    );
  }
}

Future<Post> updatePost(Post post) async {
  final url = 'http://192.168.0.19:3000/posts/${post.id}';
  final response = await http.put(
    url,
    headers: {
      "Content-Type": "application/json",
    },
    body: json.encode(post.toJson()),
  );
  if (response.statusCode == 200) {
    return Post.fromJson(json.decode(response.body));
  } else {
    throw Exception(
      '${response.statusCode} Error Updating Post, Results: ${response.body}',
    );
  }
}

Future<void> deletePost(Post post) async {
  final url = 'http://192.168.0.19:3000/posts/${post.id}';
  final response = await http.delete(
    url,
    headers: {
      "Content-Type": "application/json",
    },
  );
  if (response.statusCode == 204) {
    return null;
  } else {
    throw Exception(
      '${response.statusCode} Error Deleting Post, Results: ${response.body}',
    );
  }
}
