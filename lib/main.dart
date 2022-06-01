import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:personal_feed/views/feed.dart';
import 'package:personal_feed/views/login.dart';
import 'package:personal_feed/views/walkthrough.dart';



/*
void main() {
  runApp(FeedApp());
}*/

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    home: MyFirebaseApp(),
    routes: {

      Login.routeName: (context) => Login(),
      a.routeName: (context) => const a(),

    },

  ));
}

class MyFirebaseApp extends StatelessWidget {

  final Future<FirebaseApp> _init = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _init,
      builder: (context, snapshot) {
        if(snapshot.hasError) {
          return ErrorScreen(message: snapshot.error.toString());
        }
        if(snapshot.connectionState == ConnectionState.done) {
          return const OnboardingScreen();
        }
        return const WaitingScreen();
      },);
  }
}

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key, required this.message}) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CS310 Spring'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}


class WaitingScreen extends StatelessWidget {
  const WaitingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: const Text('Connecting to Firebase', style: TextStyle(fontSize: 24,)),
        ),
      ),
    );
  }
}
