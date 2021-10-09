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
        iconTheme: const IconThemeData(color:Colors.white,),
        textTheme: const TextTheme(
          headline2: TextStyle(fontSize: 28,fontWeight: FontWeight.bold, color: Colors.black),
          headline3: TextStyle(fontSize: 28,fontWeight: FontWeight.bold, color: Colors.white),
          headline1: TextStyle(fontSize: 40,fontWeight: FontWeight.bold, color: Colors.white),
          bodyText1: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.black),
        ),
        primarySwatch: Colors.teal,
        canvasColor: Colors.black38
      ),
      
      home: const MyHomePage(),
    );
  }
}
