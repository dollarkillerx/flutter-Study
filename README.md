# Hello Flutter
```
flutter create demo1
cd demo1
git init 
git remote add origin ""
git push -u origin master
flutter run
```
### Hello World [lib/helloworld.dart]
- StatefullWidget 动态组件
- StatelessWidget 静态组件

### TextWidget 文本组件
- TextAlign: 文本对齐
- maxLines: 文本显示最大行数
- overflow: 控制文本溢出效果
- fontSize
- color
- decoration
- decorationStyle
```
child:Text(
            "Hello Dart!!!Hello Dart!!!Hello ",
            textAlign:TextAlign.center,
            maxLines:2,
            // overflow:TextOverflow.ellipsis,  超出显示。。。
            // overflow:TextOverflow.fade,      //超出 渐变 ！！！
            // overflow:TextOverflow.clip,       // 截断
          ),
```
- style
```
child:Text(
            "Hello Dart!!!Hello Dart!!!Hello Dart!!!Hello Dart!!!Hello Dart!!!Hello ",
            textAlign:TextAlign.center,
            style: TextStyle(
              fontSize:25.0,
            ),
          ),

child:Text(
            "Hello Dart!!!Hello Dart!!!Hello
            Dart!!!Hello Dart!!!Hello Dart!!!",
            textAlign:TextAlign.center,
            style: TextStyle(
              fontSize:25.0,
              color:Color.fromARGB(255,255,150,150),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dotted,
            ),
          ),          
```

### 容器组件
```
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
            alignment: Alignment.topCenter,
            width: 500.0,
            height: 400.0,
            color: Colors.blueAccent,
          ),
        ),
```
Container1:
```
alignment: Alignment.topCenter,  // 内容位置
width: 500.0, // 容器大小
height: 400.0,
color: Colors.blueAccent,
```
Container2:
- padding 内边距 `EdgeInsets.all() 统一设置`
- margin 外边距
- decoration 色彩背景

```
内边距
EdgeInsets.all() 统一设置
EdgeInsets.fromLTRB(val1,val2,val3,val4) 左 上 右 下

decoration 修饰器
设置容器边框
BoxDecoration Widget
LinearGradient 设置背景颜色渐变


alignment: Alignment.topLeft,
width: 500.0,
height: 400.0,
color: Colors.blueAccent,
padding: const EdgeInsets.all(20.0), // 设置全部边距
padding: const EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 0.0),
margin: const EdgeInsets.all(20.0),
decoration: BoxDecoration(  // 设置盒子修饰器
    gradient: const LinearGradient(colors: [Colors.blue,Colors.amber,Colors.deepOrange]), // 渐变
),
```
### Image 组件
- Image Widget 加入形式
- Fit属性的详细讲解
- 图片混合模式
- Repeat属性 重复
加入方式
- image.asset: 打包图片加入 会使包体过大
- image.network: 网络资源图片 动态更新
- image.file: 本地图片 照相机拍照后的图片预览
- image.memory: 加载到内存中的图片 Uint8List
