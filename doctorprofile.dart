import 'package:flutter/material.dart';
class DocProf extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return  DocProfState ();
  }
}
class   DocProfState extends State<DocProf> {

  @override
  Widget build(BuildContext context) {
    var selectedindex=3;
   
    return Scaffold(
      appBar: AppBar(
       // backgroundColor: Colors.white,
          title: Center(child: Text("Doctor's Profile",
            style: TextStyle(color: Colors.black,fontSize:30,fontWeight: FontWeight.bold ),))),
      backgroundColor:Colors.indigo[50],
     // backgroundColor:Colors.grey.shade300,
      body: Column(
        children: [
        Container(margin: EdgeInsets.only(left: 20,top: 3,right: 10),),
        SizedBox(height: 10,),
           CircleAvatar(
            backgroundImage: AssetImage("images/1.jpg"),
             radius: 60,),
        Center(child: Text("Dr. Shamse Ali ",style: TextStyle(color: Colors.black,fontSize:15,fontWeight: FontWeight.bold )),
        ),

         Container(
            width: 370 ,
            height: 83,
            child: Card(child:Column(children: [ListTile(
              title: Text("Hi,"),
              subtitle: Text("My name is Dr. Shamse Ali , I am 46 years old , "
                  "I graduated from the Faculty of Medicine , Cairo University in 2014  , I specialized in the interior"
                  " "),
            )

            ],),)

        ),
          SizedBox(height:2),

          Row(children: [

            Container(
              width: 175 ,
              height: 80,
              margin: EdgeInsets.only(left: 10),
              child:Card(
                color: Colors.blue[600],
                  child: Column(children: [ListTile(
                title:Center(child: Text("+20",style: TextStyle(color: Colors.black,fontSize:23,fontWeight: FontWeight.bold )) ),
                subtitle:Center(child: Text("Reviews",style: TextStyle(color: Colors.black,fontSize:17,fontWeight: FontWeight.bold )) ),
              )],) )),

            Container(
                width: 175,
                height: 80,
                margin: EdgeInsets.only(left:25),
                child:Card(
                    color: Colors.blue[600],
                    child: Column(children: [ListTile(
                      title:Center(child: Text("+55",style: TextStyle(color: Colors.black,fontSize:23,fontWeight: FontWeight.bold )) ),
                      subtitle:Center(child: Text("Patients",style: TextStyle(color: Colors.black,fontSize:17,fontWeight: FontWeight.bold )) ),
                    )],) )),
          ],),
        Container(
          child: ListTile( title: Text("Patient analytics",style: TextStyle(color: Colors.black,fontSize:23,fontWeight: FontWeight.bold )),)),
          Row(children: [

          Container(
           width: 125 ,
           height: 80,
           margin: EdgeInsets.only(left: 10),
           child:Card(
           color: Colors.blue[600],
           child: Column(children: [ListTile(
           title:Center(child: Text("Appointments Today",style: TextStyle(color: Colors.black,fontSize:10,fontWeight: FontWeight.bold )) ),
           subtitle:Center(child: Text("10 Appointment",style: TextStyle(color: Colors.black,fontSize:9,fontWeight: FontWeight.bold )) ),
    )],) )),

            Container(
                width: 110,
                height: 80,
                margin: EdgeInsets.only(left: 15),
                child:Card(
                    color: Colors.blue[600],
                    child: Column(children: [ListTile(
                      title:Center(child: Text("New Patients",style: TextStyle(color: Colors.black,fontSize:12,fontWeight: FontWeight.bold )) ),
                      subtitle:Center(child: Text("15 Patients",style: TextStyle(color: Colors.black,fontSize:10,fontWeight: FontWeight.bold )) ),

                    )],) )),
            Container(
                width: 110 ,
                height: 80,
                margin: EdgeInsets.only(left: 15),
                child:Card(
                    color: Colors.blue[600],
                    child: Column(children: [ListTile(
                      title:Center(child: Text("Total Patients",style: TextStyle(color: Colors.black,fontSize:12,fontWeight: FontWeight.bold )) ),
                      subtitle:Center(child: Text("25 Patients",style: TextStyle(color: Colors.black,fontSize:10,fontWeight: FontWeight.bold )) ),
                    )],) )),

    ],),

          SizedBox(height:2),
          Container(
              child: ListTile( title: Text("Next Events",style: TextStyle(color: Colors.black,fontSize:23,fontWeight: FontWeight.bold )),)),

          Container(
              width: 370 ,
              height: 80,
              child: Card(child:Column(children: [ListTile(
                leading: Icon(Icons.calendar_month_outlined,color: Colors.blue[600]),
                title: Text("Medical Conference"),
                subtitle: Text("May 12 - 10:00 AM"),
              )

              ],),)

          ),
          Container(
              width: 370 ,
              height: 80,
              child: Card(child:Column(children: [ListTile(
                leading: Icon(Icons.calendar_today_sharp,color: Colors.blue[600]),
                title: Text("visit to new hospital"),
                subtitle: Text(" sunday  - 10:00 AM"),
              )

              ],),)

          ),






        ],),
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 30,
        currentIndex: selectedindex,
        selectedIconTheme: IconThemeData(color: Colors.blue),

        backgroundColor: Colors.white,
        onTap: (index){
          setState(() {
            selectedindex=index;
          });

        },

        items: [
          BottomNavigationBarItem(label: "Questions", icon: Icon(Icons.question_answer,),),
          BottomNavigationBarItem(label: "Appointments",icon: Icon(Icons.book_online),),
          BottomNavigationBarItem(label: "Patients", icon: Icon(Icons.personal_injury), ),
          BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person),)
        ],),





     );
  }
}




