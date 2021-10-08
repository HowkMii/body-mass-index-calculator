



import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);
 

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isMale = false;
  double heightVal=170;
  int weight = 55;
  int age =180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Body Mass Index')),
      ),
      body: SafeArea(
        child: Center(
          child: Expanded(
            child:GestureDetector(
              onTap: (){
                setState(() {
                  isMale=true;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),color:isMale? Colors.teal: Colors.blueGrey
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.male),
                    const SizedBox(height: 15,),
                    Text('Male',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.white))
                  ],
                ),
              ),
            ) ,
          ),
         
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
