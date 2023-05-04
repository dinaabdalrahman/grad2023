import 'package:flutter/material.dart';
import 'package:grad/add_advs.dart';
import 'package:grad/advs.dart';
import 'package:grad/after_add_adv.dart';
import 'package:grad/determine_adv.dart';
import 'package:grad/doctorprofile.dart';
import 'package:grad/new_advs.dart';
import 'package:grad/pat.dart';
import 'package:grad/pay_adv.dart';
import 'package:grad/search.dart';
import 'package:grad/doctorsearch.dart';
import 'package:grad/doctorsignup.dart';
import 'package:grad/userinfo.dart';
import 'package:grad/after_delete_adv.dart';


import 'try.dart';
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
         home:Nadvs(),

      routes: {
        "add":(context) =>Adding(),
        "pay":(context) =>Pay(),
        "adv":(context) =>Nadvs(),
        "after add adv":(context) =>After_add_ad(),
        "after delete adv":(context) =>After_delete_ad(),




      },

    );

  }
}

