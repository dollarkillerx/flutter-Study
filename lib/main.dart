import 'package:flutter/material.dart';

void main()=>runApp(Xapp());

class Xapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"TextWidget",
      home:Scaffold(
        appBar:AppBar(
          title:Text("TextWidget"),
        ),
        body: Center(
          child:Container(
            child: Text(
              "Hello Flutter",
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 40.0,
                color: Color.fromARGB(255, 255, 0, 50),
              ),

            ),
            alignment: Alignment.topLeft,
            width: 500.0,
            height: 400.0,
//            color: Colors.blueAccent,
//            padding: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 0.0),
            margin: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [Colors.blue,Colors.amber,Colors.deepOrange]), // 渐变
            ),
          ),
        ),
      )
    );
  }  
}
