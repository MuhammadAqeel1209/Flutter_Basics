import 'package:flutter/material.dart';
import 'package:move_one_screen_to_other/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Basics',
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Flutter Container"),
          backgroundColor: Colors.blue,
        ),
        body: const Column(children: [
          Text("Second Page"),
        ]));
  }
}
