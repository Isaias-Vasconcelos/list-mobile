import 'package:flutter/material.dart';
import 'package:ola_mundo/models/user.dart';

class UserDetailsPage extends StatefulWidget {
  User user;

  UserDetailsPage({super.key, required this.user});

  @override
  State<UserDetailsPage> createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.user.name),
      ),
      body: Column(
        children: [
          Center(
            child: Text('Trabalha na empresa: ${widget.user.company.name}'),
          )
        ],
      ),
    );
  }
}
