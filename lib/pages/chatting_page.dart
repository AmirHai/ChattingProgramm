import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyChattingPage extends StatefulWidget{
  createState() => new MyChattingPageState();
}

class MyChattingPageState extends State<MyChattingPage>{
  @override
  Widget build(BuildContext context){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
          appBar: new AppBar(title: new Text('моя прилка')),
          body: new Center(
            child: new Column(
              children: [new Text('первый запуск'), new FlatButton(onPressed: null,
                  child: Text('типа кнопка'))],
            )
          ),
        )
      );
  }
}