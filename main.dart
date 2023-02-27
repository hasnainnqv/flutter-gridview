import 'package:flutter/material.dart';
void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget{
  const myApp({Key? key}) : super(key:key);
  @override

  Widget build(BuildContext context){
    return MaterialApp(
      title: "FLUTTER WIDGET",
      debugShowCheckedModeBanner:  false,
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: const MyHomePage(),
    );


  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({Key? key}) : super (key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  var listColor=[Colors.lightGreenAccent,Colors.pink,Colors.red,Colors.green,Colors.yellow,Colors.red,Colors.lightGreenAccent,Colors.pink,Colors.red,Colors.green,Colors.yellow,Colors.red,Colors.lightGreenAccent,Colors.pink,Colors.red,Colors.green,Colors.yellow,Colors.red];
  @override

  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("FLUTTER GRIDVIEW"),

        ),
        // body: Container(
          // width: 500,
          // child: GridView.count(crossAxisCount: 2,
          // mainAxisSpacing: 10,
          // crossAxisSpacing: 20,
          //
          // children: [
          //   Container(color: Colors.red,),
          //   Container(color: listColor[0]),
          //   Container(color: listColor[1]),
          //   Container(color: listColor[2]),
          //   Container(color: listColor[3]),
          //   Container(color: listColor[4]),
          //   Container(color: listColor[5]),
          //   Container(color: listColor[3]),
          //   Container(color: listColor[2]),
          //   Container(color: listColor[3]),
          //   Container(color: listColor[4]),
          //
          //
          //
          //
          // ],
          // )

        // )

    body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(

      mainAxisSpacing: 10,
      crossAxisCount: 3
    )
        ,
        itemCount: listColor.length,


        itemBuilder: (context,index){
      return Container(color: listColor[index],
      child: Center(child: Text("container ${index+1}")),);

        })
    );


  }
}
