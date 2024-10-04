import 'dart:async';

import 'package:flutter/material.dart';
import 'package:move_one_screen_to_other/main.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 30),(){

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: Colors.blue,
        child:const Center(
          child: Text("Classico",style: TextStyle(
            fontSize: 39,
            fontWeight: FontWeight.normal,
            color: Colors.white
          ),),
        ),
      ),
    );
  }
}