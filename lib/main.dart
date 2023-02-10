// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black, // navigation bar color
      statusBarColor: Colors.black, // status bar color
    ));

    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Share'),
            titleSpacing: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {},
            ),
            backgroundColor: Colors.black,
          ),
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Sunrise_tawatchai07.jpg'),
                    fit: BoxFit.fill
                  )
                ),
              ),
              Center(
                child: Container(
                  color: Colors.black.withOpacity(.5),
                  constraints: BoxConstraints.expand(height: 70),
                  child: Center(
                    child: Text(
                      "Learning Flutter",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    )
                  ),
                ),
              )
            ],
          )
      )
    );
  }
}
