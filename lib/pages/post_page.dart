import 'package:flutter/material.dart';
import 'package:ola_mundo/controllers/post_controller.dart';
import 'package:provider/provider.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  void initState() {
    super.initState();

    final postController = Provider.of<PostController>(context, listen: false);
    postController.loadPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PostController>(
      builder: (context, controller, child) {
        if (controller.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.post_add),
              title: Text(controller.posts[index].title),
            );
          },
          itemCount: controller.posts.length,
        );
      },
    );
  }
}
