import 'package:flutter/material.dart';
import 'package:ola_mundo/controllers/user_controller.dart';
import 'package:ola_mundo/pages/app_widget.dart';
import 'package:ola_mundo/repositories/post_repository.dart';
import 'package:ola_mundo/repositories/user_repository_impl.dart';
import 'package:provider/provider.dart';

import 'controllers/post_controller.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => UserController(userRepository: UserRepositoryImpl()),
    ),
    ChangeNotifierProvider(
      create: (_) => PostController(postRepository: PostRepository()),
    )
  ], child: const Main(title: 'Olá mundo')));
}
