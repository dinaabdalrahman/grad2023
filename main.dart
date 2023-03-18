import 'package:flutter/material.dart';
import 'package:grad/doctorprofile.dart';
import 'package:grad/pat.dart';
import 'package:grad/search.dart';
import 'package:grad/doctorsearch.dart';
import 'package:grad/profile.dart';
import 'package:grad/userinfo.dart';
import 'package:grad/patients.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home:Patients(),

      routes: {
        "pat":(context) =>Pat(),
      },

    );

  }
}