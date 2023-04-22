import 'package:flutter/material.dart';
class Adding extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return AddingState ();

  }
}

class  AddingState extends State<Adding> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
        title: Center(child: Text("   Adding Advertisements         ", style: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black))),
        backgroundColor: Colors.white10,
        ),
            body: Column(children: [
              SizedBox(height: 20),
              Text("Enter Some Information                                    ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21, color: Colors.black))
              ,SizedBox(height: 20),

             Text("A) Type of advertisment                                      ",
                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.indigo))
        ,SizedBox(height: 10),

           TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                        borderSide: BorderSide(width: 2)
                    )
                ),

              ),
              SizedBox(height: 20),

              Text("  B) Advertisment duration                                                 ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.indigo))
              ,SizedBox(height: 10),

              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                        borderSide: BorderSide(width: 2)
                    )
                ),

              ),
              SizedBox(height: 20),

              Text("  C) Who can see the advertisment ?                                               ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.indigo))
              ,SizedBox(height: 10),

              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                        borderSide: BorderSide(width: 2)
                    )
                ),

              ),
              SizedBox(height: 20),

              Text("  D) How many times does the ad appear?                                               ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.indigo))
              ,SizedBox(height: 10),

              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                        borderSide: BorderSide(width: 2)
                    )
                ),

              ),
              SizedBox(height: 20),

              Text("  E) How long does it appear on the application?                                            ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.indigo))
              ,SizedBox(height: 10),

              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                        borderSide: BorderSide(width: 2)
                    )
                ),

              ),

              SizedBox(height: 40),

              Center(
                child: ElevatedButton(
                  child: const Text('Send',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),),
                  onPressed: () {
                    Navigator.of(context).pushNamed("add");
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white10,
                    padding: EdgeInsets.symmetric(horizontal: 30),),

                ),
              ),



            ],)
    );}}