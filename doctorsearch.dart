import 'package:flutter/material.dart';
class Search extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return SearchState ();

  }
}

class  SearchState extends State<Search>{
  var selectedindex =2;
  @override
  Widget build(BuildContext context){

    return Scaffold(

      appBar: AppBar(title: Center(child: Text("Search         ", style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black))),
          backgroundColor: Colors.white,
          leading: TextButton(onPressed: () {},
              child: Text("Back",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),)),

      ),
        backgroundColor: Colors.indigo[100],
      body:Column(
          children: [Container(
            height: 50,
            width: 375,
            margin: EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                  disabledBorder: InputBorder.none,
                  prefixText: "Dr.",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),borderSide: BorderSide(width: 20,color: Colors.white10),gapPadding: BorderSide.strokeAlignCenter.ceilToDouble(),),
                  prefixIcon:  Icon(Icons.search),
                  suffixIcon: Container(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,mainAxisSize: MainAxisSize.min,
                    children: [Icon(Icons.tune),Text("   ") ,Icon(Icons.keyboard_voice),Text("  ")],),)
              ),
            ),),



          ] ),


        bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 30,
          currentIndex: selectedindex,
          selectedIconTheme: IconThemeData(color: Colors.blue),

          backgroundColor: Colors.white,
          onTap:(index){
            setState(() {
               selectedindex=index;
            });

          },

          items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home),),
          BottomNavigationBarItem(label: "Dashboard", icon: Icon(Icons.dashboard),),
          BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search),),
          BottomNavigationBarItem(label: "Person",
            icon: Icon(Icons.person),)
        ],),



        );

        }
}