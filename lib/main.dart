import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app_widget.dart';

void main() {
  runApp(AppFirebase());
}

class AppFirebase extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _AppFirebaseState createState() => _AppFirebaseState();
}

class _AppFirebaseState extends State<AppFirebase> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    //é um construtor esperando o futuro //ele dentro de si mesmo tem um await e quando não acontecer ele fica em loading
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Material(
              child: Center(
                  child: Text(
            "Não foi possivel incializar o FireBase",
            textDirection: TextDirection.ltr,
          )));
        } else if (snapshot.connectionState == ConnectionState.done) {
          return AppWidget();
        } else {
          return Material(
              child: Center(
            child: CircularProgressIndicator(),
          ));
        }
      },
    );
  }
}
