import 'package:flutter/material.dart';
import 'home.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application push.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Body Mass Index Calculator',
      theme: ThemeData(
        textTheme: TextTheme(
          headline2: TextStyle(fontSize: 34,fontWeight: FontWeight.bold, color: Colors.white),
        ),
        primarySwatch: Colors.lime,
        canvasColor: Colors.black38
      ),
      
      home: const MyHomePage(),
    );
  }
}
