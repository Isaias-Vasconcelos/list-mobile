import "package:flutter/material.dart";
import "package:ola_mundo/controllers/user_controller.dart";
import "package:ola_mundo/pages/post_page.dart";
import "package:ola_mundo/pages/user_page.dart";
import "package:provider/provider.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    final userController = Provider.of<UserController>(context, listen: false);
    userController.loadUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram'),
      ),
      body: const DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.supervised_user_circle_sharp),
              ),
              Tab(
                icon: Icon(Icons.post_add),
              )
            ],
          ),
          body: TabBarView(children: [
            UserPage(),
            PostPage()
          ]),
        ),
      ),
    );
  }
}
