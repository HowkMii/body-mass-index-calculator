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
    if (result>=30) {
      resultText ="Obse";
    } else if (result>25 && result <30) {
      resultText ="OverWeight";
    } else if (result>=18.5 && result <=24.9 ) {
      resultText ="Normal";
    } else {
      resultText ="Thin";
    } 
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text('Resullt'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Gender: ${isMale?'Male':'Female'}',
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,),
              Text('Result: ${result.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center),
              Text('Healthiness: ${resultPhrase}',
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center),
              Text('Age: ${age}',
              style:Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center),

            ],
          ),
        ),),
    );
  }
}
