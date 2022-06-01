import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:personal_feed/util/styles.dart';
import 'package:personal_feed/util/colors.dart';

import 'feed.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();

  static const String routeName = '/login';
}

class _LoginState extends State<Login> {
  int loginCounter = 0;
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String pass = '';

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
              title: Text(title, style: loginTextFormFieldTextStyle
              ),
              content: SingleChildScrollView(
                child: ListBody(
                  children: [
                    Text(message, style: loginListBodyTextStyle
                    ),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LOGIN',
          style: loginAppBarTextStyle,
        ),
        backgroundColor: AppColors.primary,
        centerTitle: true,
        elevation: 0.0,
      ),

      body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8.0),

        child: Form(
          key: _formKey,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(60.0),
                child: Image.network(
                    'https://www.pngall.com/wp-content/uploads/2/Runner-Transparent.png'),
              ),
              Container(
                padding: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width/1.1,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    label: Container(
                      width: 100,
                      child: Row(
                        children: [
                          const Icon(Icons.email),
                          const SizedBox(width: 4),
                          const Text('Email'),
                        ],
                      ),
                    ),
                    fillColor: AppColors.textformfieldfillColor,
                    filled: true,
                    labelStyle: loginTextFormFieldTextStyle,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.primary,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  validator: (value) {
                    if(value != null){
                      if(value.isEmpty) {
                        return 'Cannot leave e-mail empty';
                      }
                      if(!EmailValidator.validate(value)) {
                        return 'Please enter a valid e-mail address';
                      }
                    }
                  },
                  onSaved: (value) {
                    email = value ?? '';
                  },
                ),
              ),

              Container(
                padding: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width/1.1,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    label: Container(
                      width: 150,
                      child: Row(
                        children: [
                          const Icon(Icons.password),
                          const SizedBox(width: 4),
                          const Text('Password'),
                        ],
                      ),
                    ),
                    fillColor: AppColors.textformfieldfillColor,
                    filled: true,
                    labelStyle: loginTextFormFieldTextStyle,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.primary,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  validator: (value) {
                    if(value != null){
                      if(value.isEmpty) {
                        return 'Cannot leave password empty';
                      }
                      if(value.length < 6) {
                        return 'Password too short';
                      }
                    }
                  },
                  onSaved: (value) {
                    pass = value ?? '';
                  },
                ),
              ),

              OutlinedButton(
                onPressed: () {
                  if(_formKey.currentState!.validate()) {
                    print('Email: $email');
                    _formKey.currentState!.save();
                    print('Email: $email');
                    setState(() {
                      loginCounter++;
                    });
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const a()),
                    );
                  } else {
                    _showDialog('Form Error', 'Your form is invalid');
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    'LOGIN',
                    style: loginLoginButtonTextStyle,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                ),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}