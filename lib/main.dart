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
          child: Container(
            child: Container(
              child: Image.network(
                "https://user-gold-cdn.xitu.io/2020/3/19/170f05cf47137426?imageView2/1/w/1304/h/734/q/85/format/webp/interlace/1",
                scale: 2.0,// 缩放
//                fit: BoxFit.fill, // 充满整个容器
//                fit: BoxFit.contain,  // 拉伸铺满可能会有空袭
//                fit:BoxFit.cover,// 充满可能有裁切 保持图片原比例
//                  fit:BoxFit.fitHeight, // 充满高度 横向可能被裁切
//                  fit:BoxFit.fitWidth, // 充满横向  高度可能被裁切
                fit:BoxFit.scaleDown, // 保持图片原来的样式
                // 设置fit 属性 需要 width height 如下设置
                width: double.infinity,
                height: double.infinity,
                color: Colors.lightGreenAccent,   // 设置图片底色
                colorBlendMode: BlendMode.color,  // 混合模式  （滤镜）
                repeat: ImageRepeat.repeatY, // 图片repeat重复 充满容器
              ),
              alignment: Alignment.topCenter,
              height: 400.0,
              width: 300.0,
              color: Colors.amber,
            ),
          ),
        ),
      )
    );
  }  
}
