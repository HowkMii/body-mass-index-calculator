



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
  int age =18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Body Mass Index')),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[ Expanded(
            
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  m1Exp('male'),
                  const SizedBox(width: 15,),
                  m1Exp('female'),
                  
                ],
              ),
            ),
          ),
          Expanded(
            
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  m2Exp('weight'),
                  const SizedBox(width: 15,),
                  m2Exp('age'),
                  
                ],
              ),
            ),
          ),
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Expanded m1Exp(String type) {
    return Expanded(
          child:GestureDetector(
            onTap: (){
              setState(() => isMale = type=='male'? true:false);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),color:(isMale && type=='male')||(!isMale && type=='female')? Colors.teal: Colors.blueGrey
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Icon(type=='male'?Icons.male:Icons.female,size: 90,),
                  const SizedBox(height: 15,),
                  Text(type=='male'?'Male':'Female',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.white))
                ],
              ),
            ),
          ) ,
        );
        
  }
  Expanded m2Exp(String type) {
    return Expanded(
          child:Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),color:Colors.blueGrey
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(type=='age'?'Age':'Weight',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.black)),
                const SizedBox(height: 15,),
                Text(type=='age'?'$age':'$weight',style: TextStyle(fontSize: 45,fontWeight: FontWeight.w800, color: Colors.white)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      heroTag: type=='age'?'age--':'weight--',
                      onPressed: (){
                        setState(() => type=='age'? age--:weight--);
                      },
                      child: Icon(Icons.remove),
                      mini: true,

                      ),
                    FloatingActionButton(
                      heroTag: type=='age'?'age++':'weight++',
                      onPressed: (){
                        setState(() => type=='age'? age++:weight++);
                      },
                      child: Icon(Icons.add),
                      mini: true,

                      ),
                  ],
                )
              ],
            ),
          ) ,
        );
        
  }
}
