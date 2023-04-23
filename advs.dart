import 'package:flutter/material.dart';
import 'package:grad/add_advs.dart';

class Advs extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return AdvsState ();

  }
}

class  AdvsState extends State<Advs> {
 
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(" Advertisements         ", style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black))),
        backgroundColor: Colors.white,
        leading: TextButton(onPressed: () {},
            child: Text("Back",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),)),

      ),
      backgroundColor:Colors.indigo[50],
      body:Column(children: [

        SizedBox(height: 5),

        Text("Featured Advertisements                                     "
            ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
        ),
        SizedBox(height: 2),

        SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:Row(children: [
          Container(

            child: ListTile(
              title: Image.asset("images/a.1.jpg",cacheWidth: 180,height: 120,cacheHeight:130),
             subtitle:Column(children: [Text("Nutrition Clinic",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)) ,Row(children: [
              Text("     Cairo",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),Icon(Icons.location_on,size: 10,)
              ],),
               Row(children: [TextButton(
                 onPressed: () {
// Do something when pressed
                 },
                 style: ElevatedButton.styleFrom(
                   primary: Colors.blue,
                   padding: EdgeInsets.symmetric(horizontal: 20),),
                 child: Text('Delete',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13,color: Colors.black),),
               ),],),
             ],)

            ),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)
          , color:Colors.white,),
            margin: EdgeInsets.all(4),

            width: 140,
            height: 200,
          ),
          Container(
            child: ListTile(
                title: Image.asset("images/a.4.jpg",cacheWidth: 180,height: 120,cacheHeight:130),
                subtitle:Column(children: [Text("Cardiac Clinic",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)) ,Row(children: [
                  Text("      El Minia",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),Icon(Icons.location_on,size: 10,)
                ],),
                  Row(children: [TextButton(
                    onPressed: () {
// Do something when pressed
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 20),),
                    child: Text('Delete',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13,color: Colors.black),),
                  ),],),
                ],)
            ),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)
    , color:Colors.white,),
            margin: EdgeInsets.all(4),

            width: 140,
            height: 200,
          ),
          Container(
            child: ListTile(
                title: Image.asset("images/a.3.jpg",cacheWidth: 180,height: 120,cacheHeight:130),
                subtitle:Column(children: [Text("Nutrition Clinic",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)) ,Row(children: [
                  Text("     Mansoura",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),Icon(Icons.location_on,size: 10,)
                ],),
                  Row(children: [TextButton(
                    onPressed: () {
// Do something when pressed
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 20),),
                    child: Text('Delete',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13,color: Colors.black),),
                  ),],),


                ],)
            ),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)
    , color:Colors.white,),
            margin: EdgeInsets.all(4),

            width: 140,
            height: 200,
          ),
          Container(
            child: ListTile(
                title: Image.asset("images/a.2.jpg",cacheWidth: 180,height: 120,cacheHeight:130),
                subtitle:Column(children: [Text("Nutrition Clinic",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)) ,Row(children: [
                  Text("     El Fyoum",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),Icon(Icons.location_on,size: 10,)
                ],),
                  Row(children: [TextButton(
                    onPressed: () {
// Do something when pressed
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 20),),
                    child: Text('Delete',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13,color: Colors.black),),
                  ),],),

                ],)
            ),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)
    , color:Colors.white,),
            margin: EdgeInsets.all(4),

            width: 140,
            height: 200,
          ),
          Container(
            child: ListTile(
                title: Image.asset("images/a.5.jpg",cacheWidth: 180,height: 120,cacheHeight:130),
                subtitle:Column(children: [Text("Cardiac Clinic",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)) ,Row(children: [
                  Text("      Assuit",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),Icon(Icons.location_on,size: 10,)
                ],),
                  Row(children: [TextButton(
                    onPressed: () {
// Do something when pressed
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 20),),
                    child: Text('Delete',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13,color: Colors.black),),
                  ),],),

                ],)
            ),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)
    , color:Colors.white,),
            margin: EdgeInsets.all(4),

            width: 140,
            height: 200,
          ),
          Container(
            child: ListTile(
                title: Image.asset("images/a.6.jpg",cacheWidth: 180,height: 120,cacheHeight:130),
                subtitle:Column(children: [Text("Nutrition Clinic",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)) ,Row(children: [
                  Text("      Alex",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),Icon(Icons.location_on,size: 10,)
                ],),
                  Row(children: [TextButton(
                    onPressed: () {
// Do something when pressed
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 20),),
                    child: Text('Delete',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13,color: Colors.black),),
                  ),],),
                ],)
            ),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)
    , color:Colors.white,),
            margin: EdgeInsets.all(4),

            width: 140,
            height: 200,
          ),
          Container(
            child: ListTile(
                title: Image.asset("images/a.7.jpg",cacheWidth: 180,height: 120,cacheHeight:130),
                subtitle:Column(children: [Text("Cardiac Clinic",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)) ,Row(children: [
                  Text("      Beni Sweif",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),Icon(Icons.location_on,size: 10,)
                ],),
                  Row(children: [TextButton(
                    onPressed: () {
// Do something when pressed
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 20),),
                    child: Text('Delete',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13,color: Colors.black),),
                  ),],),
                ],)
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)
            , color:Colors.white,

            ),

            margin: EdgeInsets.all(4),
            width: 140,
            height: 200,
          ),
        ],)


        ),
        SizedBox(height: 5),

        Text("Other Advertisements                                          "
          ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
        SizedBox(height: 5),


    SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:Column(children: [
            Container(
              width: 370,
              height: 95,
              child: ListTile(

                  title: Text("Cardiac Clinic",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                  leading: Image.asset("images/a.8.jpg",cacheWidth: 280,height: 189,cacheHeight:110),

                  subtitle:
                  Column(children: [Row(children: [Text("Beni Sweif",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),Icon(Icons.location_on,size: 10,)
                  ],)
                    ,SizedBox(height: 15),
                    Row(children: [TextButton(
                      onPressed: () {
// Do something when pressed
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        padding: EdgeInsets.symmetric(horizontal: 20),),
                      child: Text('Delete',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13,color: Colors.black),),
                    ),],),],)),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)
              , color:Colors.white,),
              margin: EdgeInsets.all(4),
            ),
            Container(
              width: 370,
              height: 95,
              child: ListTile(

                  title: Text("Nutrition Clinic",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                  leading: Image.asset("images/a.9.jpg",cacheWidth: 280,height: 189,cacheHeight:110),

                  subtitle:
                  Column(children: [Row(children: [Text("Assuan",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),Icon(Icons.location_on,size: 10,)
                  ],)
                    ,SizedBox(height: 15),
                    Row(children: [TextButton(
                      onPressed: () {
// Do something when pressed
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        padding: EdgeInsets.symmetric(horizontal: 20),),
                      child: Text('Delete',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13,color: Colors.black),),
                    ),],),],)),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)
                , color:Colors.white,),
              margin: EdgeInsets.all(4),
            ),
            Container(
              width: 370,
              height: 95,
              child: ListTile(

                  title: Text("Cardiac Clinic",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                  leading: Image.asset("images/a.11.jpg",cacheWidth: 280,height: 189,cacheHeight:110),

                  subtitle:
                  Column(children: [Row(children: [Text("El Auxor",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),Icon(Icons.location_on,size: 10,)
                  ],)
                    ,SizedBox(height: 15),
                    Row(children: [TextButton(
                      onPressed: () {
// Do something when pressed
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        padding: EdgeInsets.symmetric(horizontal: 20),),
                      child: Text('Delete',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13,color: Colors.black),),
                    ),],),],)),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)
                , color:Colors.white),
              margin: EdgeInsets.all(4),
            ),
            Container(
              width: 370,
              height: 95,
              child: ListTile(

                  title: Text("Nutrition Clinic",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                  leading: Image.asset("images/a.10.jpg",cacheWidth: 280,height: 189,cacheHeight:110),

                  subtitle:
                  Column(children: [Row(children: [Text("Giza",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),Icon(Icons.location_on,size: 10,)
                  ],)
                    ,SizedBox(height: 15),
                    Row(children: [TextButton(
                      onPressed: () {
// Do something when pressed
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.Colors.blue,
                        padding: EdgeInsets.symmetric(horizontal: 20),),
                      child: Text('Delete',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13,color: Colors.black),),
                    ),],),],)),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)
                , color:Colors.white),
              margin: EdgeInsets.all(4),
            ),
            Center(
              child: ElevatedButton(
                child: const Text('Add an Advertisement',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),),
                onPressed: () {
                  Navigator.of(context).pushNamed("add");
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 30),),

              ),
            ),


          ],),



    )],

    )

    );}}

