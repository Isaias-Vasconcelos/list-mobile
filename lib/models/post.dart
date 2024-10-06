class Post {
  int id;
  int userId;
  String title;
  String body;

  Post({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  factory Post.fromMap(Map<String, dynamic> item) {
    return Post(
      id: item['id'],
      userId: item['userId'],
      title: item['title'],
      body: item['body'],
    );
  }
}
