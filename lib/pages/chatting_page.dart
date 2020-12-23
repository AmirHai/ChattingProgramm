import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moePrilojenie/auntification/login_parol_page.dart';

class MyChattingPage extends StatefulWidget {
  createState() => new MyChattingPageState();
}

class MyChattingPageState extends State<MyChattingPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
          appBar: new AppBar(title:
              new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                textDirection: TextDirection.ltr,

                children: [
                  new Text('чат'),

            ],
          ),
            actions: [
              new FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => LoginAndParol()));
                },
                child: Image.asset('images/back_button_new.png'),
                padding: EdgeInsets.all(15),
                height: 30,
                minWidth: 30,
              ),
            ],
          ),
          body: new Align(
              alignment: Alignment.topRight,
              child:
              new Text(''),
          ),
        ));
  }
}
