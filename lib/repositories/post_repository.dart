import 'package:dio/dio.dart';
import 'package:ola_mundo/models/post.dart';

class PostRepository {
  final Dio _dio = Dio();

  Future<List<Post>> getAllPosts() async {
    try {
      var request =
          await _dio.get('https://jsonplaceholder.typicode.com/posts');

      List<Post> response =
      (request.data as List).map((post) => Post.fromMap(post)).toList();

      return response;
    } on Exception catch (e) {
      throw Exception('Erro ao buscar usuários: $e');
    }
  }
}