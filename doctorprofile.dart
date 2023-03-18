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




