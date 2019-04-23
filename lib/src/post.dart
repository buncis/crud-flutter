class Post {
  String id;
  String title;
  String content;

  Post({
    this.id,
    this.title,
    this.content,
  });

  factory Post.fromJson(Map<String, dynamic> json) => new Post(
        id: json["id"],
        title: json["title"],
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "content": content,
      };

  @override
  String toString() {
    return 'Post{id: $id, title: $title, content: $content}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Post &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          content == other.content;

  @override
  int get hashCode => id.hashCode ^ title.hashCode ^ content.hashCode;
}
