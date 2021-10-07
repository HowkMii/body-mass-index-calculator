import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  const Result({ Key? key,
    required this.result,
    required this.isMale,
    required this.age }) : super(key: key);
  final double result;
  final bool isMale;
  final int age; 
  String get resultPhrase{
    String resultText ='';
    if (result>=30) resultText ="Obse"; 
    else if (result>25 && result <30) resultText ="OverWeight"; 
    else if (result>=18.5 && result <=24.9 ) resultText ="Normal"; 
    else  resultText ="Thin"; 
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Resullt'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text('Gender: ${isMale?'Male':'Female'}',style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),),
              Text('Result: ${result.toStringAsFixed(2)}',style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),),
              Text('Healthiness: ${result.toStringAsFixed(2)}',style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),),

            ],
          ),
        ),),
    );
  }
}
