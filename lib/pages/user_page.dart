import 'package:flutter/material.dart';
import 'package:ola_mundo/models/user.dart';
import 'package:ola_mundo/pages/user_details_page.dart';
import 'package:provider/provider.dart';

import '../controllers/user_controller.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {

  void verDetalhes(User user) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => UserDetailsPage(user: user),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<UserController>(builder: (context, controller, child) {
      if (controller.isLoading) {
        return const Center(child: CircularProgressIndicator());
      }

      return ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Image.network(
                  'https://th.bing.com/th/id/OIP.riRb8aJVzDHFiHVqwjCC_gHaNK?rs=1&pid=ImgDetMain'),
            ),
            title: Text(controller.users[index].name),
            onTap: () {
              verDetalhes(controller.users[index]);
            },
          );
        },
        itemCount: controller.users.length,
      );
    });
  }
}
