import 'package:flutter/material.dart';
import 'package:notes/src/views/create_note.dart';
import 'package:notes/src/views/home.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        title: "Notes",
        initialRoute: "/home",
        routes: {
          "/home": (context) => HomePage(),
          "/create-note": (context) => CreateNotePage(),
        });
  }
}
