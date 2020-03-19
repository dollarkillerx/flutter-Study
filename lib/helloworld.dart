import 'package:flutter/material.dart';
// 基础样式
// material 扁平化设计风格  安卓阵营

// 主函数 闭包执行
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Welcome to Flutter",
      home:Scaffold(
        appBar: AppBar(
          title:Text("Hello World"),
        ),
        body:Center(
          child:Text("Hello Dart!!!"),
        ),
      )
    );
  }
}