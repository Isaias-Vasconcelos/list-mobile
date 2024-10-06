import 'package:flutter/material.dart';
import 'package:ola_mundo/repositories/post_repository.dart';

import '../models/post.dart';

class PostController extends ChangeNotifier {
  final PostRepository postRepository;

  PostController({required this.postRepository});

  List<Post> _posts = [];
  bool _isLoading = false;

  List<Post> get posts => _posts;
  bool get isLoading => _isLoading;

  Future<void> loadPosts() async {
    _isLoading = true;
    notifyListeners();

    try {
     _posts = await postRepository.getAllPosts();
    } catch(e){
      print('Erro: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}