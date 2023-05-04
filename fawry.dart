import 'package:flutter/material.dart';
class Fawry extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return FawryState ();

  }
}

class  FawryState extends State<Fawry>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Center(child: Text("  Fawry          ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black))),
      backgroundColor: Colors.white,
      leading: TextButton(onPressed: () {
    Navigator.of(context).pushNamed("pay");

    },
    child: Text("Back  ",
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),)),

    ));
  }}