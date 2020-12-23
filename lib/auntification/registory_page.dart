import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RegistrationPageState();
}


class MyFormTwo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyFormTwoState();
}

class MyFormTwoState extends State<MyFormTwo>{
  final _formKeyTwo = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Container(
        padding: EdgeInsets.all(10.0),
        child: new Form(key: _formKeyTwo ,child: new Column(

        )),
      ),
    );
  }
}




class RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('регистрация'),
          backgroundColor: Colors.red,
          toolbarHeight: 60,
        ),
        body: MyFormTwo(),
      ),
    );
  }
}
