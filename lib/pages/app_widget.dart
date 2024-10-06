import 'package:flutter/material.dart';
import 'package:ola_mundo/pages/home_widget.dart';
import 'package:ola_mundo/pages/login_page.dart';

class Main extends StatelessWidget {
  final String title;

  const Main({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepPurple, brightness: Brightness.dark),
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const ScreenLogin(),
        "/home": (context) => const HomePage(),
      },
    );
  }
}
