import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyProfile extends StatelessWidget {
  MyProfile(String string, {
    Key? key,
    required this.nameFromHome,
  }) : super(key: key);
  var nameFromHome;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("My Profile"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          color: Colors.blueGrey.shade300,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome $nameFromHome',
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Back',
                      style:
                          TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                    ),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue)),
              ],
            ),
          ),
        ));
  }
}
