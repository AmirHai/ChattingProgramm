import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moePrilojenie/auntification/registory_page.dart';
import 'package:moePrilojenie/pages/chatting_page.dart';

class LoginAndParol extends StatefulWidget {
  createState() => new LogParState();
}

class MyFormLogPar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyFormLogParState();
}

class MyFormLogParState extends State {
  final _formkey = GlobalKey<FormState>();
  String Login = '';
  String Parol = '';

  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: EdgeInsets.all(10.0),
        child: new Form(
          key: _formkey,
          child: new Column(
            children: <Widget>[
              new SizedBox(
                height: 100,
              ),
              new TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'пожалуйста введите Email';
                  } else {
                    return value;
                  }
                },
                decoration: InputDecoration(hintText: 'Email'),
              ),
              new SizedBox(
                height: 30,
              ),
              new TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'пожалуйста введите пароль';
                  } else {
                    return value;
                  }
                },
                decoration: InputDecoration(hintText: 'Password'),
              ),
              new SizedBox(
                height: 75,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: new Row(
                  children: [
                    new RaisedButton(
                      onPressed: () {
                        if (_formkey.currentState.validate()) {
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text('вы успешно вошли в аккаунт'),
                            backgroundColor: Colors.green,
                          ));
                        }
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyChattingPage()));
                      },
                      child: Text('Войти'),
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                    ),
                    new RaisedButton(
                      onPressed: () {
                        if (_formkey.currentState.validate()) {
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text('вы перешли в окно регистрации'),
                            backgroundColor: Colors.green,
                          ));
                        }
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegistrationPage()));
                      },
                      child: Text('регистрация'),
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              )
            ],
          ),
        ));
  }
}

class LogParState extends State<LoginAndParol> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('аутентификация'),
          backgroundColor: Colors.red,
          toolbarHeight: 60,
        ),
        body: MyFormLogPar(),
      ),
    );
  }
}
