import 'package:flutter/material.dart';
class Pay extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return PayState ();

  }
}

class  PayState extends State<Pay>{

  var pay;
  @override
  Widget build(BuildContext context) {
    var Payment;
    return Scaffold(
      appBar: AppBar(

        title: Center(child: Text("  Pay for Advertisment          ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black))),
        backgroundColor: Colors.white,

        leading: TextButton(onPressed: () {
          Navigator.of(context).pushNamed("determine adv");

        },
            child: Text("Back  ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),)),

      ),

    body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          SizedBox(height: 20),
          Text("  Answer Some Questions :-                                    ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21, color: Colors.blue))
          ,SizedBox(height: 20),

          Text("    How long does the ad appear ?                                     ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black))
          ,SizedBox(height: 10),

          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(width: 2)
                )
            ),

          ),
          SizedBox(height: 10),

          Text("    How many times does the ad appear ?                                                 ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black))
          ,SizedBox(height: 10),

          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(width: 2)
                )
            ),

          )
          ,SizedBox(height: 10),

          Text(" To which category is the ad shown ?             ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black))
          ,SizedBox(height: 10),

          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(width: 2)
                )
            ),

          ),
          SizedBox(height: 20),

          Text("Which type you want to pay with?                 ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black))
          ,SizedBox(height: 10),
          Row(children: [
            Radio(value: "fa", groupValue: pay, onChanged: (val){
              setState(() {
                pay = val;

              });
            }),
            Text("  Fawry",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.blueGrey)),

          ],),
          Row(children: [
            Radio(value: "vi", groupValue: pay, onChanged: (val){
              setState(() {
                pay = val;

              });}),
            Text("  Visa",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.blueGrey)),

          ],),
          SizedBox(height: 80),

          Center(
            child: ElevatedButton(
              child: const Text('Pay',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),),
              onPressed: () {
                Navigator.of(context).pushNamed("pay for fawry");
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 30),),

            ),
          ),

        ])
    ));
  }}
