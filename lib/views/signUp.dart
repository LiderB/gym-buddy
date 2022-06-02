import 'dart:io' show Platform;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:personal_feed/util/colors.dart';
import 'package:personal_feed/views/welcome.dart';

import '../util/analytics.dart';
import '../util/auth.dart';
import '../util/styles.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Gym Buddy';

  @override
  Widget build(BuildContext context) {
    AppAnalytics.setScreenName("Sign Up"); print("Sign Up");
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title),
          backgroundColor: AppColors.primary,
        ),

        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  int loginCounter = 0;
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String pass = '';
  late String s;

  final AuthService _auth = AuthService();
//deniyorum birseyler
  Future registerUser() async {
    dynamic result = await _auth.registerUserWithEmailPass(email, pass);
    if(result is String) {
      _showDialog('Register Error', result);
    } else if (result is User) {
      //User signed up
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Welcome()),);
      print("result is user---------------------------");
      _showDialog('Successful', "You just registered to our app!");
    } else {
      _showDialog('Register Error', result.toString());
    }
  }

  Future<void> _showDialog(String title, String message) async {
    bool isAndroid = Platform.isAndroid;
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          if(isAndroid) {
            return AlertDialog(
              title: Text(title),
              content: SingleChildScrollView(
                child: ListBody(
                  children: [
                    Text(message),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          } else {
            return CupertinoAlertDialog(
              title: Text(title, style: loginTextFormFieldTextStyle),
              content: SingleChildScrollView(
                child: ListBody(
                  children: [
                    Text(message, style: loginListBodyTextStyle),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          }

        });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                        color: AppColors.secondary,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),

              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please enter your name',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: mailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please enter your mail',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please enter your username',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please enter your password',
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  //forgot password screen
                },
                child: const Text('',),
              ),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: const Text('Register'),
                    onPressed: () async {
                      print(nameController.text);
                      print(mailController.text);
                      print(usernameController.text);
                      print(passwordController.text);
                      email = mailController.text;
                      pass = passwordController.text;
                      if(_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();

                        await registerUser();

                        print('Email: $email');

                        print('Email: $email');
                        setState(() {
                          loginCounter++;
                        });


                        //Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const a()),);
                      } else {
                        _showDialog('Form Error', 'Your form is invalid');
                      }
                      //Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const Welcome()),);
                    },
                  )
              ),
              Row(
                children: <Widget>[
                  const Text(''),
                  TextButton(
                    child: const Text('',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      //signup screen
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
        ));
  }
}